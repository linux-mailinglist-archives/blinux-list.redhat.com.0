Return-Path: <blinux-list+bncBCRNHOFA7YJBBCV3XG4QMGQEA6UUKFI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEED9C2516
	for <lists+blinux-list@lfdr.de>; Fri,  8 Nov 2024 19:51:10 +0100 (CET)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7181ca4eca5sf2305096a34.1
        for <lists+blinux-list@lfdr.de>; Fri, 08 Nov 2024 10:51:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731091852; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZFid5mt8ygsxpRQ97GSRbTgBJCpFGMwXXF7NvKg2RLkpQj/fdiHRjQ3s4NFz+v/g8Q
         g1bFIk3t+T8wQkHWgra0qTmivf9m+dGgFNXnDt+qf55JeCU5YfnfpYU7JjUEzhMWGilc
         wQy9nX9sFjGojjZV87LN2bYJhOSbGPsotMyc/Dn5hyJtQYqAF3XJ/yS+XI8dElNP6Csh
         vJU5du0cjJ9YxvON19cMWU+olGmuEQ2OdAr/uKkO3HlHmqrYmdKxqVvnhSI8soCG1qgq
         yjisrCHQJXn1I6SWWXXjWHaP05phJFbzbuZBl+q26C1u/x4SwLYOp/uXW1i1AP4kToAy
         eYhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:to:message-id
         :subject:date:mime-version:from:delivered-to;
        bh=+jvtrwDyy8CN21z1MRn8p1uemKeBt3Yw/OBXZPDZqvM=;
        fh=9m793tfZcu0dLNq9oPtgwTMatYsTrOTwMxxsVdiIbhw=;
        b=NoCZYt9hzF8Euly7PBuij63HoHQmnShDSDvCQlKjXzICDPf2nhV5dTLQkC7tC/qXA5
         d+Cs98RVUyANa7B36WBB4LPRZaMfNc2HI9rjRa5vpk9fR3jJmNPLwHmgEtHj0xe6g/Cd
         HZ9He0Vp6DTgdKo4rHAtelSvgPlSZTe23FLoI8GwrAUXBCrdnuM0rFi6GIScs36veqXU
         KeQ445HtvOb7QYrwxarE69o/b1DT0ZhRVoqHIJ7JMhzCYW9SiM3ZYkXJD3jqyLZBx8zz
         L08JCROkXnQarjmIGg+DQak2bYhsCLcGhMrZCn8C7cleEaCEmGy5zF3s7IpJAQcy9tgK
         3gwQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.215.195 as permitted sender) smtp.mailfrom=rdm@cfcl.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731091852; x=1731696652;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+jvtrwDyy8CN21z1MRn8p1uemKeBt3Yw/OBXZPDZqvM=;
        b=X0bpjCkdPjOMdf6Wpxj9IuZvyHCzpnur7pYo4AA8Nxc7v3sjyRs4fRtSCEenvGnO/p
         LLJu47btm/ngtUJKTEf6SyZM27J9ALAj7Ixc6gk5/2FI0N265iBYJZ0lVxWbZF6S9rym
         oQ8ndu4mWb6WHi7oCMbCTEXA67Y6ATebur7BScIMSOhn+Pwnjfn9KZlrPy+CvYUSOqe/
         Xd474Er3SfZIikN0GqHKZTsRbgb35WhQrftCpZDNIfwpy24i+NZ3IGZVl6FSGJ5rA2Pa
         UElXjg2ZT9ikCv3/z4iveQDv3U67Cv8cxtsCGXOW4MT+Y37Z9sYInVzjftRX2T90mW+Q
         DF/g==
X-Forwarded-Encrypted: i=2; AJvYcCX14R+8kcRZgl+vJ6cCgYl7kss+sbFnRcOpPJUbXEE1iacX/DVq7xGKiIzYvekoWMJ/+wvoGA==@lfdr.de
X-Gm-Message-State: AOJu0YyTKhiXK1D7lzpUeD6dwfA3QhRU9AYFSsLcGN/QHfTy0vq5XoCV
	l/lsvuxKEj0xMrSXrJaGadL1DBZh0TqjkOij3HzLZif3eC46TAP2xwWEmtGpj0o=
X-Google-Smtp-Source: AGHT+IGXLH2juOGdOA6ig6xeGXaZQ/pu+9gLxJKwkqV/F7bsM1zGgMDggKbeTRwY9F9bfxdyW9YB3w==
X-Received: by 2002:a05:6358:848b:b0:1b8:211a:e7b3 with SMTP id e5c5f4694b2df-1c641e75181mr329080055d.5.1731091851531;
        Fri, 08 Nov 2024 10:50:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5743:0:b0:6cb:7ce9:f52c with SMTP id 6a1803df08f44-6d3933d5390ls33655596d6.0.-pod-prod-07-us;
 Fri, 08 Nov 2024 10:50:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVtWIhWjHXYLakffFnj1IOlU4FTIOrfosY+jIGDhM8x4SbTJUeslzTvyltjjH/4KqvpREPtR2XLRVbvLA==@gapps.redhat.com
X-Received: by 2002:a05:620a:3704:b0:7b1:1180:a455 with SMTP id af79cd13be357-7b331eb4264mr514093285a.22.1731091850364;
        Fri, 08 Nov 2024 10:50:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731091850; cv=none;
        d=google.com; s=arc-20240605;
        b=UBspYS7b8Y1ma27q0agpZ4iDUtsbV+JwVW0zZF09zzpceGjF2fvkPTqpNynRXQdlAV
         T9wsfcxJA4ZxUAVHac3KM8JypEpnBCQY6sGKc9bAjrrMcqcQdcCWTZeM4GQvYe0YuriT
         bLQuBMcXKFfDnd3XrJ2vnLiKhLfp298oObBc5UVKRQH+aBFfcVBTb5WER9UeiT8dYgnu
         rTCMqR3sS6U048RACZcv/vYpmkheazlW9TINfhnEr4816S6hVl4UyYjolsn9fQ0zVIsD
         NYKXC3jlDAurxbrMyF/QZbYOiaPVbDNN3VtRn4r13e3H+UOqQf/WWBV7zoXkBePFu1X+
         pJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:message-id:subject:date:mime-version
         :from:delivered-to;
        bh=DbQIKpmYDHBAlQY12KxrqXA1MNwltbCR/9x4uRHVE/A=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=JxELsLEKRa958biFRH6fvXuUO/n/kovgS3r24cikZ6prOpimjtsoaeegzEfhHki5Og
         ATljfSuidWiH9QcusTqIMsgRBt2Ba661Wp4L/oJWXmStwLx5NSerj1AGCic1cGKK4deD
         85TCAZwfdzbB+IKcTRUqS94cjhBPymx5um4ET5oGcdCIuegEQuKvzIb2VMxyR8IRV2M8
         fcqhHdGCg+qxv4D1/YkpEBhl9eEhpHTHMSXVMzYdDxhki+MC8VBTmzdjMwUdzvLztr13
         K9p/8JLcDY8TxabWwEuvg6w1KPhOVNr90+x0voeWoAlkwzbpZpjIzaU//wnl8c36NTya
         I9fQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rdm@cfcl.com designates 209.85.215.195 as permitted sender) smtp.mailfrom=rdm@cfcl.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b32ac3d498si472315585a.30.2024.11.08.10.50.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 10:50:50 -0800 (PST)
Received-SPF: pass (google.com: domain of rdm@cfcl.com designates 209.85.215.195 as permitted sender) client-ip=209.85.215.195;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-376-Q5j_imEwMYWjPUJp2DKrGA-1; Fri,
 08 Nov 2024 13:50:49 -0500
X-MC-Unique: Q5j_imEwMYWjPUJp2DKrGA-1
X-Mimecast-MFC-AGG-ID: Q5j_imEwMYWjPUJp2DKrGA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AC7319541A1
	for <blinux-list@gapps.redhat.com>; Fri,  8 Nov 2024 18:50:48 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2706B1953882; Fri,  8 Nov 2024 18:50:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 24BCA1953880
	for <blinux-list@redhat.com>; Fri,  8 Nov 2024 18:50:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 927A71955EE8
	for <blinux-list@redhat.com>; Fri,  8 Nov 2024 18:50:47 +0000 (UTC)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-36-d0yDSuc0NfWctcNKcoLP6g-1; Fri, 08 Nov 2024 13:50:45 -0500
X-MC-Unique: d0yDSuc0NfWctcNKcoLP6g-1
X-Mimecast-MFC-AGG-ID: d0yDSuc0NfWctcNKcoLP6g
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-7eae96e6624so1797421a12.2
        for <blinux-list@redhat.com>; Fri, 08 Nov 2024 10:50:44 -0800 (PST)
X-Received: by 2002:a17:90b:17c8:b0:2e7:8593:8365 with SMTP id 98e67ed59e1d1-2e9b16f05e9mr5033235a91.5.1731091843855;
        Fri, 08 Nov 2024 10:50:43 -0800 (PST)
Received: from smtpclient.apple ([50.54.215.172])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e99a4f97b2sm5999535a91.8.2024.11.08.10.50.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2024 10:50:43 -0800 (PST)
From: Rich Morin <rdm@cfcl.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6\))
Date: Fri, 8 Nov 2024 10:50:32 -0800
Subject: FYI: $50 wearable WiFi camera
Message-Id: <19777216-7DA5-4F5C-A389-091A4676E2A1@cfcl.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: dDrXtrpzzoYQDMl7wazEziGrLWZzICfpQcaT0u1k0Ps_1731091844
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: v6_uTl1_yPqQaxAcHYsHy5uClGvkKeN1PW6oeBJ1B9E_1731091848
X-Mimecast-Originator: cfcl.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdm@cfcl.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rdm@cfcl.com designates 209.85.215.195 as permitted sender) smtp.mailfrom=rdm@cfcl.com
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

This device might be of interest for folks that are trying out HW-assisted =
accommodations (eg, The vOICe).  It's a cheap, wearable little camera (~2" =
diameter, black) that can be used in a number of applications.  It's batter=
y-powered (charged via USB) and communicates via WiFi.  It has a range of f=
eatures, including night vision and motion detection.

-r

Meet the tiny cam with big skills
https://boingboing.net/2024/11/07/meet-the-tiny-cam-with-big-skills.html

TOKK=E2=84=A2 CAM C2+ Range of Smart WiFi Discreet Day/Night Vision Camera
https://store.boingboing.net/sales/tokk-cam-c2-smart-wifi-discreet-day-nigh=
t-vision-camera

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

