Return-Path: <blinux-list+bncBCVPTHE7K4INBJUHWQDBUBEMKIFX2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A8191D430
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 23:51:14 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6ae4c8c30basf26893956d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 14:51:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719784273; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEqtmsDyVrC0/U/0gHEjSaw2J7SVfD+6JfsqAB4M/iafLRQNnfmboiwNYpQNzsJOEx
         LCBx1Ogynr7Cr144biRD7uG1teMDghKuQlk7yIEyN8VN30UG/cGTWthLndIKQKHYvfFD
         SfS9rjAAFw5i6Euu8oAmk7uCrYdGgsR6BDOt5gUeYQzFIxy6jganoKiTe3BupZevpwUa
         d/a5Khu7h+1xO7x9Kfq6H4Dg02xO9N4vEVDYyOh028iYhUHtOQ7lBR/sfrpNP7aEGVC4
         OS2taVx9IvMPwE3XxC/Z+xxqdTnY9hwOMKW50ZLuEUbtlVm9O3kjHUNYBAdGsiF+k9WA
         jxoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=uT7TgE5EovIeXuUHfpKeR2R+cYrzuaDC5Ccyz3i6IO8=;
        fh=TFUkR1SUjezBnCTqO8ZgIcSmkBNk5I9kFQ5br/rL6Wk=;
        b=i7XP8psZkj5bAgQ5bewUcslypCmkknfb5fOmRDJlL5FW7pVHHXc5J3A4WI1pEMV7yO
         ONcXvSL8LauEQ9ePMfUnvD3idXbKYmgmqveF4SsYBq5hahsoc4+imeUsmXn8Q6AuobIp
         YttSzN3hUJ5lM/3InR3YmV4D8HVUCiEy4lggpw7ed4HFyFANU2+jDLxxSDgd6tAhy60S
         XBRqoQjZQk1DxE/y2rZaV6JhCN7MxXRsIrbAh13tFr1LPgjtdIYIAG++06CV3pFzd42m
         nXuoazODpyTCcbrVSBwPNv7no1nZQY5kv338b3ASnwZ6Nb/sGcOzhKbmdEqaiVbSkPRk
         qsZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719784273; x=1720389073;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uT7TgE5EovIeXuUHfpKeR2R+cYrzuaDC5Ccyz3i6IO8=;
        b=TU+2B5tJ0ICC4946Q5yKa9W3rWGxn18TRXaGFkwNbp6bmRfbGVc5hT2eqETzcSDIQ/
         V5VPkLHahti2GgoJOFV39W/OTXIAfjgt978bbP3dfaVG2uCgnPt6LZGkZ3gSlePFxCPL
         tRzsTHwxB//8WAEatihX6I3YbVLluUQTzcAOvWCUQQ+EAphZkvH0aEjylQZWwi+5odmd
         6nu8mHnB3kccvC7o1m9+/ylRTnchFouNhvi1NIGYKgd65AuQewziyzOXdGeG1x7BRfG1
         RHC4HQ3MQLMZb1yFhYfJ+8E+IGtqf6p2suUv1lw5wIOKp9DJ1diNGV8qxzVl4+sfX1/z
         xbtg==
X-Forwarded-Encrypted: i=2; AJvYcCXvweFkzC/tMYYIYjZBRAJelQnltt5dorwCLqH4S8GsJMUn/oYUcZ56s4dL4OofVuBrfbYOIhVs/FJNOEf/PFX3qvLm+dD7RfhN
X-Gm-Message-State: AOJu0Yy/RMmF8NRFkUnWz+abG3z+qIHNjkr6ahPiayEF+nD8jljLuwAr
	JedtvkQsUKvw17o95roWxYKk9HDuzMHnk36MwyG91TfuhanHfP+KI+cETvYQCxQ=
X-Google-Smtp-Source: AGHT+IH4Llb7kHsgh7gB0tMz9gmocLS6smHElLrMBlWtOVe8eFiL1KigNt5gJ4woHKu990K70Efr/g==
X-Received: by 2002:a05:6214:212d:b0:6b5:26f7:76b5 with SMTP id 6a1803df08f44-6b5b704eafcmr70753456d6.7.1719784273492;
        Sun, 30 Jun 2024 14:51:13 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5de9:0:b0:6b5:d99:4d3b with SMTP id 6a1803df08f44-6b59fcccaeels39470816d6.2.-pod-prod-04-us;
 Sun, 30 Jun 2024 14:51:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUd+EdbEH6AHa2hs0LBzGlI3jv5eDFzHgmxqls8gs1kM82Os0M+iXMra33oiKnVMDb3kknfUfx8ryt0anYb2uKiBkUkdgqGOW3Wc4HF
X-Received: by 2002:a05:6214:d61:b0:6b0:6ed7:1d5b with SMTP id 6a1803df08f44-6b5b7148e24mr54982956d6.45.1719784272388;
        Sun, 30 Jun 2024 14:51:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719784272; cv=none;
        d=google.com; s=arc-20160816;
        b=qiQQJUKi8xNWJ2Cbe3lGfCjbDPCB4KUB2TzGccv3VnA8Z1y1LPkiGRl0CFFgYvwT1o
         NHFULYq9YfMeazWyQr+l7NJFBnpwbBCG6cgbyx0+aEm2E/oqazyR+OaQBScqRmIFsQGz
         e/RXDsncA+B9NIV1PtWzXxYQaItP2AapbEWcXynPpCsJ2WaXGjfzDvfw14MzE5MzCHp9
         Yi3EyXCBmDvs+PxRp8/dwcH8hzbwkqDlTvw/we8XE0ynL2l8oQ+Jic2eBCMcMgMpU453
         q5YITCRuK0z1CcLR/WRD181FdsGzZxWlRGRdVNQmPWe86qsYwrCrcfpT36tkP6mkwQxn
         6oWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=uT7TgE5EovIeXuUHfpKeR2R+cYrzuaDC5Ccyz3i6IO8=;
        fh=VyKXAThI+6qSjiPugOOIse8Xpla/smkW2tVZYif5aK4=;
        b=aS3uB6bdQVhf76vfySgEWWyeYUQEM3P9qF6jJJ0C1/hLJfBietv6gSBnGtxqGYz/Hy
         7bTqJ4WlQYVC5bpNXMKLDw3Z+1LiphRXTICzlUpnd/aBqYYSrHLvyN9lj0G1LQcz4xSj
         V3JwKJCQb1EFaxGhE6+6kjbS57/SCeUB7fSLytpUnX57nQD0TfPg/T1/DUIHYc7sML9s
         165rPEVMyjQ1ulFDOdDtcEz6Nf3pcwJoSi6B2Vwj37Gpm77XnTDvl1rrG7sfVjRdQ7Tu
         vZdkmmJYD9r1ltZ1SYYumumrOgtHDXVShlLBi0z9DIAuBPNHeGXHszlslSg3YOjagASL
         5vzw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4465c9ae1ccsi53238331cf.486.2024.06.30.14.51.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 14:51:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-53-2Uw_aZDsPzO5jZ9ZHpHvJQ-1; Sun,
 30 Jun 2024 17:51:10 -0400
X-MC-Unique: 2Uw_aZDsPzO5jZ9ZHpHvJQ-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BA0EC19560AA
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 21:51:09 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A68AB19560AA; Sun, 30 Jun 2024 21:51:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A434D19560A3
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 21:51:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3E33B1956087
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 21:51:09 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-625-_5GlFoi4MFy1touJBfVtvw-1; Sun,
 30 Jun 2024 17:51:06 -0400
X-MC-Unique: _5GlFoi4MFy1touJBfVtvw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D1FEB44FC8;
	Sun, 30 Jun 2024 17:51:05 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 9D4571001C1; Sun, 30 Jun 2024 17:51:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 9B6ED1001B0;
	Sun, 30 Jun 2024 17:51:05 -0400 (EDT)
Date: Sun, 30 Jun 2024 17:51:05 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Didier Spaier <didier@slint.fr>
cc: blinux-list@redhat.com
Subject: Re: solving missing ptr record issues?
In-Reply-To: <Pine.LNX.4.64.2406301645490.3212883@users.shellworld.net>
Message-ID: <Pine.LNX.4.64.2406301748330.3215556@users.shellworld.net>
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
 <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com> <dbf54f5d-9bc6-4fa9-b418-705bc36fd2b5@gmx.it>
 <ae3bf211-b235-42d8-b2a0-15ae92df01d0@slint.fr>
 <Pine.LNX.4.64.2406301645490.3212883@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi once more,
The below example is a freelist effort.  while it says it will be retried, 
they timeout without success.
Karen
From MAILER-DAEMON@atlas.bondproducts.com Fri Jun 28 22:51:25 2024
Date: Fri, 28 Jun 2024 22:50:27 -0400 (EDT)
From: Mail Delivery System <MAILER-DAEMON@atlas.bondproducts.com>
To: klewellen@shellworld.net
Subject: Delayed Mail (still being retried)

This is the mail system at host atlas.bondproducts.com.

####################################################################
# THIS IS A WARNING ONLY.  YOU DO NOT NEED TO RESEND YOUR MESSAGE. #
####################################################################

Your message could not be delivered for more than 4 hour(s).
It will be retried until it is 5 day(s) old.

For further assistance, please send mail to postmaster.

If you do so, please include this problem report. You can
delete your own text from the attached returned message.

                    The mail system

<midimag@freelists.org>: host turing.freelists.org[52.72.220.210] said: 450
     4.7.25 Client host rejected: cannot find your hostname, [23.24.6.165] (in
     reply to RCPT TO command)

     [ Part 2: "Delivery report" ]

Reporting-MTA: dns; atlas.bondproducts.com
X-Postfix-Queue-ID: 203DC40508
X-Postfix-Sender: rfc822; klewellen@shellworld.net
Arrival-Date: Fri, 28 Jun 2024 18:01:08 -0400 (EDT)

Final-Recipient: rfc822; midimag@freelists.org
Original-Recipient: rfc822;midimag@freelists.org
Action: delayed
Status: 4.7.25
Remote-MTA: dns; turing.freelists.org
Diagnostic-Code: smtp; 450 4.7.25 Client host rejected: cannot find your
     hostname, [23.24.6.165]
Will-Retry-Until: Wed,  3 Jul 2024 18:01:08 -0400 (EDT)

Return-Path: <klewellen@shellworld.net>
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
 	by atlas.bondproducts.com (Postfix) with ESMTP id 203DC40508
 	for <midimag@freelists.org>; Fri, 28 Jun 2024 18:01:08 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
 	id C77BF1000C0; Fri, 28 Jun 2024 18:01:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 	by users.shellworld.net (Postfix) with ESMTP id C61691000B3
 	for <midimag@freelists.org>; Fri, 28 Jun 2024 18:01:07 -0400 (EDT)
Date: Fri, 28 Jun 2024 18:01:07 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: midimag@freelists.org
Subject: a question about managing power?
In-Reply-To: <1c071902-c1f2-46d7-9ce6-1a9825bdb62c@noisynotes.com>
Message-ID: <Pine.LNX.4.64.2406281756530.3177263@users.shellworld.net>
References: <1c071902-c1f2-46d7-9ce6-1a9825bdb62c@noisynotes.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



