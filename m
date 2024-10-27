Return-Path: <blinux-list+bncBDYPVTOXSQEBBZ727G4AMGQER3LMPDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CA49B1F79
	for <lists+blinux-list@lfdr.de>; Sun, 27 Oct 2024 18:50:33 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6cbe6ad0154sf56209836d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 27 Oct 2024 10:50:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730051432; cv=pass;
        d=google.com; s=arc-20240605;
        b=UfgLWkGi29O3kRvP8oeluQqkqn32v1G9SA826zxTqHftv11arqB+S+nYUkUgUxDRvo
         EQ55X8drO3a7pI33S8+4SzPpsphBa8+Kr9cwGz6z2aymXjWUrW5YpeXjnlwZvk/tcluf
         zs5DnlR/CJ/Gp5GOfBoIhZgwDoB82tVS1shRyj/k8X//XbkNetHdKFVUEUTVOW1m9zQ3
         cVsIeESTJtGQg+IGOaahdrpWhC41EDuUZbcFua4SSEKMBFGmgItqa3JjBEmH8pl0xjXA
         Mb0zJkl6vO3tnx3L2r8y3hS9GgPctXZngG0yYbJdbMUK2f3tnLT9wpGxEQ3/z8QytpcV
         yDDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=6DlfVko4Og7RQBOCvVNDndaIl2Lxiwl6zMvZ8ZBtuAc=;
        fh=3yz2Bsz0u3CACUsscui//gAMVv/NO614kZXXcT//fD4=;
        b=R93dFGuz6a484WEYyJfCilib+o1CWcTNg0Y7hLLAlvPuKFg1pkDBf+svEphhSUuCA/
         95hiP4gOQbl+BVrcXNHEEIaZcrGOSoSHWt8lcmYIQ0IRCD6Rjhr1hfMp2quGeBOT6N99
         89vWRtthKdnLHjH16o96/Hu7rjf7u9PBBeHDiVs0OY72dSXxRBDsQvNynKULym6jTZZR
         SGGLuwZSN02XiWq1D9mo3ujVsnx5rE4yt7W1OYmIQthV7vzOEljtuEhz3HDZioKTH2BB
         eml4Rkb9nqriZfNZ7uwY3+rNs5qCaAPFlNEPaUHjSVk9EQWhh6IXIAoF8gJjt2TRHIK/
         OM7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730051432; x=1730656232;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6DlfVko4Og7RQBOCvVNDndaIl2Lxiwl6zMvZ8ZBtuAc=;
        b=M8pFfRX1d/PmHlpgTOqRdY4iIjvvHbqPtKeBLpNSK+7FpZpGLMXJ+NygXe1/xTDujs
         9AAbJqICxjt7Xpd/nbIU4EgI+9QBHgl+HUOUcOPtc7GhcaNtLF/eVkJnhkYMydKXYHDQ
         qPiyC6DR5DmUPl5/Htsbjo3Nwpf2Y2F1ydxiNJyaWCn+X79ZJ33EVVVAjJ10N3OhZa9b
         FkXXYDaNgevdsA//1r2MZDYyNUV+iGjeLqgRrTpAy/cGmqu+/RqxkyTBI90mfPJfr4aW
         5cDwiOBH4XdWe0Y3kUIJFGAZIcz+VPsKJ7L13xWYvWQnyEreM2S83zpHqwjtGE3b6Cug
         mlOQ==
X-Forwarded-Encrypted: i=2; AJvYcCXS8tpkx4jDr0Ebci3b841eslUkLfyPBM6Ko6cPlcNPiArbwiU8Dx9nZOSc9dmKIN+s4X7KNw==@lfdr.de
X-Gm-Message-State: AOJu0YxXLv2zJzPexPleCOsTdBqYsv1sfZRa1HlZ83Ilg1D0+FL0cWTt
	7PfeQGR7XLI8qWebQVOsC/p6xNKevfuGmi1V63g45s6x6GYmK9XYgZN0txM+ky8=
X-Google-Smtp-Source: AGHT+IFsMbzxQqPj9hZuYRmLexfFNAzZureG7zcYJhL4TAZeEjw8H0Ofgeg56Ci4S5Pjjj5gAKS9Bg==
X-Received: by 2002:a05:6214:4517:b0:6cb:ee32:12ee with SMTP id 6a1803df08f44-6d18587fe58mr109745976d6.49.1730051431917;
        Sun, 27 Oct 2024 10:50:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:21c5:b0:6c5:1ba8:6e52 with SMTP id
 6a1803df08f44-6ce862899dbls70229416d6.1.-pod-prod-06-us; Sun, 27 Oct 2024
 10:50:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVYxsQy5hn72i+Ha5lwz3TR5ny2dHhub8tSRvR27OnxmayQy+sRa0ZkhauL+OXcFETFVFX7fz9wDXKpyQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:3f8f:b0:6ce:3cfb:d158 with SMTP id 6a1803df08f44-6d1856fa06fmr126835596d6.26.1730051430946;
        Sun, 27 Oct 2024 10:50:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730051430; cv=none;
        d=google.com; s=arc-20240605;
        b=Mg78/cnUr2TaBAEpBS6OtePGfI2xjc1+XlrKDN4ujHKtSmqlkWvxqrE7f2UVk0hPgK
         6pZKHc0NUD6DZGJ/QRW5K/+14sb0hSn10ystxU1Dj1dQN8MykoQBm7+uPs8b4NvPQ5up
         JtO0Sac+g5MtnxNAmDOQrip2UgRRKU1YbizunLepw7V7orVkNU7ij4qVRlSRA6oxjUGo
         14qT+X8SsdSytnSCXN5u0OhwBoPiVcKy4opY69f18yN4zEHTwhIoH/sdZnlICMgi9A3h
         ySQ1vxrs4l+zceRfXg/AydXIXY1vy/ws7BDr6Or9H8O8JbIKGnPH761KznyXPef6eJLh
         he6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=iEjCTd0taH6/g/hUqplvpIEL1/UTSsGFZYuA/aUUgI8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gaqzDrPnZUt6gkCnewG2keI2Y1zM46NqzPpasFsZvo+x+78RmpHmItOR8w7GXKEibb
         +q/PLrN1RJgehHeLRLl33bnz9FRWkdxf/m0kk8fBoc38Y/DYGM4NlkNU7IOjZ8OmamVO
         ktSkMcteK+PmCjJPcX8Pp67kGqHY3gVg9adwH1PBGKN+TfshyMMnRpZSGD2OrUoLq8hL
         iwtWrp8CqHA60nWA3y9xsZ5wKVlhoBuaAoLz7SPSdTwMxplZP+dLUQN4S23F5E2mS/Jj
         6TzywSzswm4sLdKj6FiZvzGISOpcYl6EPlNOENSxp52TRjFw/2tawLSCEWEedYVc7NNw
         eOLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-4613238e25bsi64179211cf.448.2024.10.27.10.50.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 10:50:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-616-fjgseS_GPFGi1S3ehMtwBA-1; Sun,
 27 Oct 2024 13:50:29 -0400
X-MC-Unique: fjgseS_GPFGi1S3ehMtwBA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D6B6719560A2
	for <blinux-list@gapps.redhat.com>; Sun, 27 Oct 2024 17:50:28 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D0BE819560A3; Sun, 27 Oct 2024 17:50:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CE49719560A2
	for <blinux-list@redhat.com>; Sun, 27 Oct 2024 17:50:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 60F171956083
	for <blinux-list@redhat.com>; Sun, 27 Oct 2024 17:50:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-244-hwqbGhVlP-yilYF21XfwBw-1; Sun,
 27 Oct 2024 13:50:26 -0400
X-MC-Unique: hwqbGhVlP-yilYF21XfwBw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Xc3vj5w5yz47gn
	for <blinux-list@redhat.com>; Sun, 27 Oct 2024 13:50:25 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Xc3vj5Ydmzcbc; Sun, 27 Oct 2024 13:50:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Xc3vj5T4fzcbC
	for <blinux-list@redhat.com>; Sun, 27 Oct 2024 13:50:25 -0400 (EDT)
Date: Sun, 27 Oct 2024 13:50:25 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: chromebook and tdsr
Message-ID: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

I'm using the package in the debian container environment with 96gb of
space so it has enough room to swing a cat. tdsr for whatever reason needs
to be started once the penguin shell is opened with chromevox turned off.
For whatever reason so far the command to start tdsr cannot be appended to
.bashrc without generating trace back errors.  My guess is the command
just before the command to invoke tdsr needs a couple ampersands attached
to its end so tdsr will only start after that command has run to its end.
I've tried it other ways and had to power wash the chromebook to clear my
mistakes.  If I can get the sound card to play a tone at the end of
.bashrc execution that would be helpful too.  The shell comes up slowly
even with chromevox disabled. I'm using an acer spin #713 I bought a few
years ago since my main linux tower died and went to the recycler until I
can go and buy a replacement for it.

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

