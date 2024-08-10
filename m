Return-Path: <blinux-list+bncBDYPVTOXSQEBBJHF3W2QMGQEWXSPI7Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 4202B94DD2D
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 16:01:10 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5d601a9374csf3391191eaf.1
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 07:01:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723298469; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhxdNJi8XfW1sxmLVa9s/BwcsfMDUSPoWb2azvDf3ntRWzWcNlu8bgbJGL4KoaGyza
         xmJ9wzVAIPdNea1uc7kFr0VIJJKwZzIVYg0CD+ugIF0PmJ2BxucdN3u5Fs+W1K3HrUm1
         6zVxH/jKjNZs3AkSFrzKbolaQaSq85hKgOjpYu/ijeYflN5yR01d96mpCJfITZLD8VK9
         RhoH5I2EjsTwe2Gdzgnx2rM12i/xAu3irdNRkpcF7TOMpISuD0BXyTEjYHq+UebyFrJp
         /y1txrz49QWF+5zes9RJKwAVqCHjU5+Uq1pcm7xP23N3IRj0VdipqgauRp/6zOdXPbbe
         jxYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:cc:to:from
         :date:delivered-to;
        bh=QkP2UolYzidT5DNXOpc5p2sHO+jRInQB3Rx+ogYoBkQ=;
        fh=VT2h+MknV0ulGsR2bxxXcvTSXTyaG8W9eAKN5lBG/AI=;
        b=mtkzJqCDz3FTIOsL0ZaddJiQcjyNXW0bLeElsPgGgxXzQW8ovrW2ftTh+pzVyt9yEn
         kmxeUJ4hENsv/pnR9QCpYTDwhpQC3v4dWHLmGe6Y/hHeTWDstHgkXqxP7qIEKLlPYEfF
         kiBMvjBSQw1pvT7Mcsc2pak79sWq2ErxRNAaRMuBcy9jn1H/J3YrAZC617WxE1ftfxNA
         ZCXihA6ZvJe26hu073kK/owPLAc/DLzJIlDgsBPVJ/jaWga7belWtPkL/pZykFKFy0jK
         YsPvy0fmips+U0XnWyQ/WqhchYY8Za0K/YH8z+xhhC8le99aZY711471fcUmICOd9h7f
         BFAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723298469; x=1723903269;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkP2UolYzidT5DNXOpc5p2sHO+jRInQB3Rx+ogYoBkQ=;
        b=qE6aqjgf1ZGCnp2oofWrNddAbKpBGLcMcC8xOG2e6W93cVmcHAej9dle8GkM7syosD
         61ikiPRmzdMMm3zMpzY6CLg3Oho+Qf39rFKId8fgRaFPvioGIFDYWj68AkeJy0ICca1U
         z2DlYJBI3Qg/PpgxRvtNQp03skxfBkNnf7Bj9QlUDB19iqX+2esvLnoBvOuFeE73/fPu
         wCMEPG6vBGvpPZY/zDAoExcq06tde+bz5OEyb9w1gVj2/7KlKBMLee5WFg7nBeq88JPK
         bWY1XxsrsYH6bq2MsQKqCU3yjoxkAkTKGvnq8Tyg12OWLQt905q1nWQe1G3XZyOw90D2
         9tjg==
X-Forwarded-Encrypted: i=2; AJvYcCWfKeo2Ij7MyzPXU+l8GEuieB8JNm1+IMbG4k9ifxl9rP1PhDPVJpSeohHn4/NQyBPUG8helsCNpQ+NFjlVbmbjTcnZpKA9EuJZ
X-Gm-Message-State: AOJu0YxiWI+M5BKsWLnHEbO+Wu4o+LVfg3lh+nQUJsrThG4d0O5otLnf
	DEsF/GRIwi8WFGOkpa5ZMbzm6VdTdvpgvCH9Q0BsWsX0ZGlXOJ5bcUHabz7DqBQ=
X-Google-Smtp-Source: AGHT+IHz6ogqjXImdhLzs303nd1008Edepu3hDJ+KC+AgpvcTpCRcP6aDaU2ZpwvEo0CMfsTjbyFlg==
X-Received: by 2002:a05:6820:2283:b0:5d6:f4b:8fb6 with SMTP id 006d021491bc7-5d86d97d84fmr5524722eaf.3.1723298468512;
        Sat, 10 Aug 2024 07:01:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:de41:0:b0:5c4:2c2b:2a0c with SMTP id 006d021491bc7-5d851052349ls3450032eaf.0.-pod-prod-04-us;
 Sat, 10 Aug 2024 07:01:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW20gF0qbM6Fc2LyH+ie+bJi2pMRNB3FLTsDEwTV6ZW3HIkJiVhRu7FQCFee++wSaF7jf9mvHqrA2gQkkjmQnrDIXlqZFmZJGICxEMS
X-Received: by 2002:a05:6808:3188:b0:3d9:db46:f645 with SMTP id 5614622812f47-3dc416ffccemr6514690b6e.49.1723298467500;
        Sat, 10 Aug 2024 07:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723298467; cv=none;
        d=google.com; s=arc-20160816;
        b=av2Ey09A2g3YBoHZ0qiCh5PVt5OQgAeeTLSaR//ovnIA0GCzgxTmHy3EXu+wQVrYlx
         GggVWg8YCZEYUDDEzPHp/qT/zu6R+SmrM5Gzw/LcXNzwsnvpg0cc7xFawetBe1m6J9+P
         ydID5trOmljvfo+LpahnMTefzqXD7xItupSdIZIeFX72qg17CbMBbKpAXEvnElrMNAGo
         tAKqzw72F+MBekc7S6CYiHBkUioUoyQlAI1UjxXH3PF/XuWsg1hVp/l7MLlVBvwJt3/b
         osJDmrsuEDofqTeBa+1eXc/uq7Qk6k7JfEJ2TZrWQhAsQp3LtYXQRjPYJCXm80pRN4ro
         FfUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:delivered-to;
        bh=qOJSPKsb5dz5J6sUECOKS49fEyPqk3p/igeWyUbLJKk=;
        fh=WQ+Fa3KjMtsUW45Oy9JKIHAMEBNn+vFRBuYr0DZL4po=;
        b=ABOr93DSnoxnnVEWWON8yHxwvp4gVWXjPvHCtXCYV/6Sf5olYQhti1hPvKS+mjxcvD
         7k67hiIRx6AMdbjrhjlAqGJ61NISHA2syJsPzLxrXhddDDDzgQH+1W1WmmdBta/tZjJS
         YCx11CTiWdussPnbO1wYKZ2B7itzrQoUDSFQj5h309rv18qtOmHrGnFW/B/uosMyEJjB
         gPt3w5gt732TZv22enJRk7HGvoiRJ2LRJyXrFfgs94nWuHlmw4L7PL0FMLMjOnWbv9sc
         dFfuXIYJF/qJy0GKJxyCnHuQ6E1Eki26fuFcnP1hmu43du4akN+v7gPl3PLlLHNmEVXE
         t0PQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c268e28si19491671cf.266.2024.08.10.07.01.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 07:01:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-187-WPldGOrOP36RkEBCgLTGHA-1; Sat,
 10 Aug 2024 10:01:05 -0400
X-MC-Unique: WPldGOrOP36RkEBCgLTGHA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5F60819560A3
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 14:01:04 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5979630001A4; Sat, 10 Aug 2024 14:01:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 56AE030001A1
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 14:01:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E606518EB226
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 14:01:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-673-taxOlyS8OPWWa6R9kU44sA-1; Sat,
 10 Aug 2024 10:01:01 -0400
X-MC-Unique: taxOlyS8OPWWa6R9kU44sA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wh2W10FYdzwyP;
	Sat, 10 Aug 2024 10:01:01 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wh2W1057yzcbc; Sat, 10 Aug 2024 10:01:01 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wh2W101RlzcbC;
	Sat, 10 Aug 2024 10:01:01 -0400 (EDT)
Date: Sat, 10 Aug 2024 10:01:00 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
cc: ubuntu-accessibility@lists.ubuntu.org, 
    debian-accessibility@lists.debian.org
Subject: emmabuntus new release
Message-ID: <aed8f758-769c-64c9-961f-a840fc7665fc@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

This distribution target audience are those with under-resourced computers
as well as any with well-resourced computers.  Release info is  at:
https://emmabuntus.org/on-july-29th-2024-emmade5-accessible-to-the-visually-impaired/


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

