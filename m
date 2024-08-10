Return-Path: <blinux-list+bncBCWIB27NVECBBPM23W2QMGQEXNTB7WA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id BA22994DC6F
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 13:21:35 +0200 (CEST)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-70935ae14c5sf3796926a34.0
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 04:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723288894; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLVrBvHdYZ1cveNJvX8iZrkM22NH4kTIBWkMsT7tuLktQiwX4XQKVBWaE9dGEXdceD
         XdgQeXDy8hsJ3ZS6G6fOMeF4xui6p5HRQ+X1f2HSa2/TgsS5ylkt2DN3e2pOXm5zb+lP
         yls+4fFt5VPw0rP/XrDzxzWO4c6MAsdGhH+wrbGzFLPBYEzautDXScgXoa1etESjGfVh
         81O8NACcSfDD2cXT3n9zexUYJ4Z5++AvGLn6GtY6S04Zi77HqigYB5uY7x59atI/JLXw
         9jxkhEXEGqjAO4OU4yX82J9VnhAvP87fV6LHv+qjYxbaaDd/lctZ5qmCGgIV3Sk5C3em
         JO1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:mime-version
         :message-id:subject:to:from:date:dmarc-filter:delivered-to;
        bh=23/EYwsNFVuzH6hTejF5KGyPftmNMWmT2+ckWiIJtpQ=;
        fh=zT8/xjGD2T/yJFdTTlxEfkFMJ0Pm94DUUykkBmkmEvI=;
        b=FtXuPigJUCA9OZHPMtAXdaatOAkVXiP9KMuZX7vHnJO94tGwGRKZDXq3H4fVzdP4WC
         8LmEtTZEZco2y9UyJa9EU+OQjiEL2g7tO8RlHGoMEqgJpwfcjGms50/qqU/OyIvzcGl8
         69mlQmvXLmsX1Jga4/Y4pytTptkKDz71SRwK1X6CxFhUZtev5kW/c8BYZ2o4ih9jTEnm
         GaljwoPgM5pX9O3ctrKy2cJZBoTNndAKiaXOu7P312AN5dJrsCRDiHUjoTKqGMR8Tso7
         fctii79Lz4BjCMGAe2hcc/o8WP3d1rUyCdw0zj9ZTiIAX415s9ua8GOM4pxDVmb/eVpm
         pX+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723288894; x=1723893694;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :dmarc-filter:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23/EYwsNFVuzH6hTejF5KGyPftmNMWmT2+ckWiIJtpQ=;
        b=NipMELvHPQ6134VUhmR0xgbBmI4c7ypWZrzbME2qPxNyauGB/izb8o8ZCboZUFPWcF
         c4OmxBk8NrT2nt1fnpzkN6swnFnDin6iTyogkPCABhsPi9uPdNVBihMtSnGGGlNe6XE1
         U4zGUlfg30K3l28WdAf9QNRdHO9ThqRKnhEdHLFFqTOvhJn98aUoYgTZ+9LHD+HALiVJ
         TSwVZuGKGCVuxFtSfIzR8Ki8C7Fv+mbINAHkv7YcRnWclQ9oDBQw/O/3Zuz9zhfx84oJ
         JhNNBflZpMYCQ4DPETHiLao/jsMBHKKt9unZpLMXVy+KXJ6vSODNeuJFnFOX27U62wv6
         x2Xg==
X-Forwarded-Encrypted: i=2; AJvYcCU/rTtluoXT6RMTFfvYV424K1cJO/m2ok+GDEz9Eptl6OqElUz6s8AgB3Rv/Ul8u81AGxLqhQxeoJFm8MmIrghxhtRmPL6fMS+W
X-Gm-Message-State: AOJu0YxcclOeFO4m3CseEc+6PBo1hHTUec8TmtunroGchfmItWxq9+gJ
	/ZKk7K3h3Xy1TN049n0ta6lzUGN3txpi2P6k5jGWXNwJD1qIEK+2bDgCvmKPKsE=
X-Google-Smtp-Source: AGHT+IGeLnMXxIaeQzeXQFBUd3h5a84zRxHmxs176iQm6lQTDJQPYAhANfUWPIe1kIvWp3FZ56fPWw==
X-Received: by 2002:a05:6358:33a3:b0:1a6:72f2:4d03 with SMTP id e5c5f4694b2df-1b176f1c082mr504499655d.9.1723288893918;
        Sat, 10 Aug 2024 04:21:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5aae:0:b0:6b7:9a07:4191 with SMTP id 6a1803df08f44-6bc845d4e1cls53040266d6.2.-pod-prod-01-us;
 Sat, 10 Aug 2024 04:21:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUXXnQ+DNsq/YWOu2RpjDPKPFStCa/9cx6OI6Y97fzm/xwz8VofH+ZWwD/oN8EnShK8098J3DsRc+UrPg4TJUvV0ZtbLfqUTwFdjuJs
X-Received: by 2002:a05:6214:5988:b0:6b0:7d80:38b9 with SMTP id 6a1803df08f44-6bd78d3e877mr44948186d6.16.1723288893154;
        Sat, 10 Aug 2024 04:21:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723288893; cv=none;
        d=google.com; s=arc-20160816;
        b=PS22HPZZMlFOmJ3ZQiG4nzJ0kuN9FSucCEO/einiRH3Li9nFvsJ86kx6j0Tb2o2uDR
         N+KeBohYdm7lFTKZqU4BVJ0ZYL1ayvrIHwZglXQus1G2d2zaZHL2U5nYV92z0Hffea6u
         +Av+7H9rE8ebTpFp6HdjyF/TZni+QdeJQWKg33w2ONYaub+//oM7daA8h0djN/JQcLk7
         dUaO3ker3OWafzZvler+bNv4WCiY/eLYw99Bo6s+9SlwdMWTLiu7mONqneOAkqZxNYPT
         TPOrTNftC3gOPA9NmA/LjoDB14cYYpydI3nWdkPOxKwySxeZFGS+psTsIkZ+8jvGtb+J
         IJZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dmarc-filter:delivered-to;
        bh=8ezB6bVWMF2Y0O4wxKiIdLNCnOGsD1JG64v20LdGkXw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=tvWnhED4z05xaCpveYAgaCzFhrUa/ocJL3EDml6S4eCTr5QJI5/cI0Z/dMQh0l0aAq
         cmqG7ryjuCnpUkoMThFZG+USt/j68Yl1uZAxDnkuHAEL0ST/S7Y/lLY0otY0/50aeyn0
         Qr4ZdkV7X6XzpjMYOC+04gdFWKG7490IMf5fCLxdQ6tYYQ6k8y+dl8dWL8IYkyFQwWG7
         nHQF7ffn77KAsJr7WRVfbcgnCpQCZIePJ70YKnj3ZQIQkspqIuiJctYrGAzP/wjLI8zj
         iFZyf2rZJw64aHwjSj5rPEz+PWOYoMQW5kRdADD+icT6hvL8LNGojkGgogHG2NsX32t4
         gmlA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bd82e79d0esi16942746d6.486.2024.08.10.04.21.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 04:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-650-MSB6mAIfPeGegAC8H97K0A-1; Sat,
 10 Aug 2024 07:21:31 -0400
X-MC-Unique: MSB6mAIfPeGegAC8H97K0A-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D413B1955F42
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 11:21:30 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CE3253001FC3; Sat, 10 Aug 2024 11:21:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CB97030001A4
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 11:21:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49CCC1956095
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 11:21:30 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-120-SToj9W-MPymX52t0SK_dZA-1; Sat,
 10 Aug 2024 07:21:26 -0400
X-MC-Unique: SToj9W-MPymX52t0SK_dZA-1
Received: from rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 527EEFA054
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 07:21:25 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.2 mail.rednote.net 527EEFA054
Received: (from janina@localhost)
	by rednote.net (8.18.1/8.16.1/Submit) id 47ABLP2H009028
	for blinux-list@redhat.com; Sat, 10 Aug 2024 07:21:25 -0400
Date: Sat, 10 Aug 2024 07:21:25 -0400
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Anyone using Asahi Linux?
Message-ID: <ZrdNNQdGfr3v6C8t@rednote.net>
MIME-Version: 1.0
X-Operating-System: Linux opera.rednote.net 6.10.3-200.fc40.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
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

I'm eespecially curious whether speakup is included with their kernel,
but Asahi Linux may just get me using fenrir, assuming the audio systems
in this linux are reliable.

I'm looking to get some kind of Linux CLI working in a VMware on my M2
Macbook. Getting Orca would be a plus, but it's not a requirement with
me just now.

TIA
Janina

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

