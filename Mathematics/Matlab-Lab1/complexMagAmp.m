function [mag, amp] = complexMagAmp(z)
% Returns magnitude and amplitude (phase in radians)

    mag = abs(z);      % magnitude
    amp = angle(z);    % amplitude (phase)
end
