Return-Path: <blinux-list+bncBDYPVTOXSQEBBHUXWKZQMGQEB55GXUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D432A909245
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:27:44 +0200 (CEST)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3d1c1f3d698sf343081b6e.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:27:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389663; cv=pass;
        d=google.com; s=arc-20160816;
        b=DBTxVeOwPg5xt9bAxm5mXU18/BZQ5P8Yl8TqjNaNBgW4Rx2/B9bdANZ6P4AtgSFFv+
         ENQU9RKvDGWhJ1Hmn/sLKlZc8QyHAfUXHRO5SNmB7d1N+KvUykIv3HbEO8V5cMUyLXs7
         XyjvCwppeITZtIhwHILh9yrhDlAYjkINmsjW1MvPMdgJ+SL8y/701b2ZIJHtkdCCwW9A
         XxZ28pE5DN5Su2nZsc0hFexQP1ESUge606MPKxsimxHeTT1tDvdm4BLugRtB8VSQXKXY
         RcNUVoA+mPccH57kt4JD/kfzyt5dRHZmEnjbHdZod9XQcuJJLIyX32Rr9zSqtvTgNX8J
         vNoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=vNx1gZhP6+QB3Jxa25IFXTlnnBMmdmwGes9nshmCURI=;
        fh=A/1294F4qKdTccN01MNF35mAX9CK9DsxLuaOd2UHbic=;
        b=PPkfh83ROiXhdxzqtFORtfRRxERqZB8qLMkHMPgXWL1/yCgRuxx606/K8Ln506pt7C
         YiM+DC8/dae1CSVh/CDOn+taFMsbT7u1FaQHtzQaeUd1etGNW63vtPiIDxfxUMMjzsPf
         iwvcwSqYy4pTASxkO237E5cxOu0uqZWIE/6hZxoAyP7s1EY2702NeovQTHkm8hLGkhnr
         TCp5CeqDwL1RwdShzJ2md9NJyDQqf4/oSgpePvrzwMslpxHoC7GcOTiPMJY9kDQrdaN4
         TufOPfWO58+9DXBJIA5CBQyWTV4vZaW9VIcsZ6gXowsW3Qp8So0xGjDrAK07wcb/njkZ
         Zxrg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389663; x=1718994463;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vNx1gZhP6+QB3Jxa25IFXTlnnBMmdmwGes9nshmCURI=;
        b=cuBSCoOLzNOiMLFXgG6Wl9ADod0fe7HEMp6EVnCMX+b8YXaTJgaX3mI+4LEQVT7lkH
         f5aIxZJX+x5rgt9pz0C44+bQVvmDTQxFQWSk0VVTmP0KdBCpsgesdDNektGs+yOPrXEd
         kIQpsHNCldRSqJ9ONoH0TiaN1B6LzXmdlHaAJIIll8MHHbdUES04hxqZHy8DlF0qXd3B
         Xvvl/Bb6DdS7d+RfOZxoT4VpnKd6//EDRKZfEl4K1/Fh1aemMAF4GF9K0duTlSydPhlI
         ap2iQK3wVwV434TFW5T0qcfagax/XmDZ7ubPFfXRzN54qHmDOOzfY6zJ+ztjB7NbG4Hk
         e4Dg==
X-Forwarded-Encrypted: i=2; AJvYcCXp9HsaPMNVwa/yLQodQz3qZlvnxzOD0mVXTJLIfwxtmmpdQaPe1rFYHgJReMp9hwPvP8KgvE/9+psX4mBh4ppUGSysuklZWJ7m
X-Gm-Message-State: AOJu0Yx7NK91ROM7k9i8fchffwtSP0Cw37rnTQdoDyuUtITE5BkAPbgb
	XCbGgM3VAKzTNmzFgtvrqEgcAd9Dwc8eslir01vpg8gZ0MHT4NKE6b6+VhHIcm0=
X-Google-Smtp-Source: AGHT+IEAAq2tje2nw4QLpEwDWbgSPSiYhwrOyRP/xRtXJqGqaVGLqxLZ0hASG9uhO0NFcQoVW2m4Lw==
X-Received: by 2002:a05:6870:971e:b0:254:7dbe:1b89 with SMTP id 586e51a60fabf-2584288b491mr3471790fac.1.1718389663089;
        Fri, 14 Jun 2024 11:27:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:e247:b0:24f:f4eb:3558 with SMTP id
 586e51a60fabf-2552bccb25els2567830fac.2.-pod-prod-01-us; Fri, 14 Jun 2024
 11:27:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXO75onKi4hXDFmnBBI4Ae5ID15hSm1KbEGuqSKQ9jgIDSKRk7fdD/XWeItMilg+n01suZvlT3RVRKfXm+2iP8UGq/T2XkP/CzGmV+7
X-Received: by 2002:a05:6808:13d0:b0:3d2:1a21:782 with SMTP id 5614622812f47-3d24ea31323mr3637224b6e.56.1718389662240;
        Fri, 14 Jun 2024 11:27:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389662; cv=none;
        d=google.com; s=arc-20160816;
        b=nk5o/QGrCdnYG2pyvSMEbvBXIjfod9y1UQX8BRTtwEaHQjBZB5CbRYau5PrjLADMLy
         ccfni81p2KkMOq+uGvOeoq7DV/fMFhfAYXMN2+xOU52I6PM9z5MHhQfscWj/F9RLzZ2f
         FIInI/Rb6mjSYSvjYF2Fo0psNKsOPSYTvA20gBaacPWK1hCr8C92Rg+gefoZ+DFPSYb6
         cdgv9thKXo6e1IhHmiK3KIJuN6+RZunfuIhOuFMU+Hh71pJku+l6sG6mOZQ7EKav6rk4
         oFxNmLMh5jzBRifNjzHayS6+D56XCP6ob+4mkOj1SvGB/h1Fa/WaQCTcWahqtWFNuvb0
         PkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=CD3odklnbS1jXYvrjWvTnZ0udS+xSl8VFXQ9Bh9UBhE=;
        fh=VjYk7sHJREeT1U6m5y3ypzfwirrHDcYiP4lBt9X7pGo=;
        b=eenuDK3frsSrjHfMlejFksQqKRot+52iYrXlAwu0q/Wwh8z7/f6BzBipdfAt5+1CZ6
         Me7qFEzpmTI91OVmzEYqagcOdhWCx8VbCgkdONOXcFCQBQkuyWLv0zO2AQT4rSKOMgZS
         99CYoqvsTpJOJONri3grMXOU0YcjKDqCwBDzOSp51gKbTwoyDWkAI6+fANbjpAtQc7/h
         4nc3mpYJNmadn7b7pqPPfav82Uaa7o7EnatgkG+E27hqsSAQXrZbCb9lVchQStLo2YGd
         ZD2jc0qbJsGDeceBaB9KwtsuFkXpqAyivOUmNhwGtc1oP2GibXhXwer39SDJCY2O/gAX
         OyWw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-441f3112d45si40709431cf.769.2024.06.14.11.27.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:27:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-290-OAroyBrAMhOcJH2EmS4Ohg-1; Fri,
 14 Jun 2024 14:27:41 -0400
X-MC-Unique: OAroyBrAMhOcJH2EmS4Ohg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2A93B19560AE
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:27:40 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1AF471954AC1; Fri, 14 Jun 2024 18:27:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 18ADE1955E91
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:27:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 844A5195608F
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:27:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-435-b4_A6-bqMNiklofoInHpnQ-1; Fri,
 14 Jun 2024 14:27:37 -0400
X-MC-Unique: b4_A6-bqMNiklofoInHpnQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W176w5w9XzpP9;
	Fri, 14 Jun 2024 14:27:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W176w5nF0zcbc; Fri, 14 Jun 2024 14:27:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W176w5kjgzcbV;
	Fri, 14 Jun 2024 14:27:36 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:27:36 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>, Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
Message-ID: <05ff5050-87b5-a355-80bc-d328a2bd0a8d@panix.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <ZmyHH4DeAXMQzthQ@panix.com>
 <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Try looking for ddgr instead.


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Fri, 14 Jun 2024, Chime Hart wrote:

> Well, I cannot find ddg in an apt or aptitude, but thanks, your suggestion
> would save some typing.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

