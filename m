Return-Path: <blinux-list+bncBCRJ7NN7ZUGRBDEZXGYQMGQEUIZZ5GA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C21A8B4BEF
	for <lists+blinux-list@lfdr.de>; Sun, 28 Apr 2024 15:18:06 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-439d6a512e9sf55902051cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 28 Apr 2024 06:18:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714310285; cv=pass;
        d=google.com; s=arc-20160816;
        b=iBcP4fAwxC4p0OuYZOXgJvLlnB9hOMrtYQY+tU0PMmEf28p2FQt/KUDhtoEwLso22h
         Gw7Mfj8ToDuA6hINvixWATtQ/WOPRMYzz/sknNx/gLt6Xen5QhHK3jI2GCw8TPXgitbj
         ABkIA3y/fz4JkImUy7BhadThXJLiJxFpCluvpavP+GXtoNDBPQ/1ZI7bOG2v0cgEQ8iE
         D1vBm3cuVXW+ajF9SYd3PgJuuowTgWqbn6lfB3pB5uO1ml6+//76aAHmq8VIW1+zOnmc
         wpCdt9ZaeZPef5uNwcyRi2CKu3/pQa4pABE4sfR9YjsHyrIuDqBdu8LYmQZrjxhYeoa+
         RFoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:from:message-id:date:references
         :in-reply-to:subject:to:delivered-to:mime-version;
        bh=fKwMyXHySvYgYorvO+foywrP/3fkcGerv8tLGNf9lEk=;
        fh=99UTHuz16c2H4xzHdJ4gZCfxccmaFO0yAUHNwfFMOY0=;
        b=cu5Gc6Vg8sXrp0RLnTDF17yHpc6hWBTXy/CiyAXTIcJTFmVBeF+K54aMlWd3fSyHK6
         tJzXhDJ64oU18J/ILNOgGT6Yr4jS3eI0UiUxgILKxgecAQTsAr9I6PuJjY+ruNh36ca5
         4pGcUYRvJ/VSlZYsVwmPaQT0oHu1q/w7WsYrWrLDfuDt1PC/c7hq4UM2ZdVvOGi6hx3s
         Fpcdi5ZfO2v7FHmFpQPHmIJkhcZc4mGhM/czrytDSaPkDwNRUxMQlNhUNnIMLXYtzurF
         /CJXuUmm5b0bsXrCEMr5OBG24NIfTxc8NGSgZAdBlWMF/XxuuG31yM6VoEACmFyvBm1C
         qhYA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714310285; x=1714915085;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:from:message-id
         :date:references:in-reply-to:subject:to:delivered-to:x-beenthere
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fKwMyXHySvYgYorvO+foywrP/3fkcGerv8tLGNf9lEk=;
        b=g1ShYVhBJH3sZzZiGbaByFrDz9D+nRSeAnIGn8DkhLw7w8I4nWlapv4s39IspTvw95
         bPwiSGjROh8leXk0/wXgEwOvF2o833iY3BmBKH/oSYBtJaWzJZLLUDRdFHRFj5rEk23R
         nW/NM9znNY0WCoEW7hwfjwqL3O3Jtrvuny/5sRTC20eJXnoMGqunJg0T7ZCns+eS5vHH
         sgi857WnVd6hPRQlYK6nWJzchjCX3vaRDb6J0jQJjNDVf4w+18Sl+6+D3n/uQcxxbVA6
         SH/RAQIqTrcVi1UAf0kwjjmoE49wkqWfbpOPReisoSZlU3Yy7qG+De+7jncNbRl2qsJx
         1Yqw==
X-Forwarded-Encrypted: i=2; AJvYcCU0k45fvMsV7u7k/wZnXlLA5GiEHnhAJcFpVbjCpGBn/pKHkd+rjo6biLo66UmanxYSwH4IDHtuZwAuNsb7PSrBuki5xGSYQ6cN
X-Gm-Message-State: AOJu0YxwWoX1g6crHO5whU74dFyWxJDpKmiveJ35fd7KfZiJRZzeW5uY
	pDxlgMX4p9Wa2d076AgGHfVmK8OytxKuWW9wA0Bgo0WtlU22XLYouQVV0OtdhI8=
X-Google-Smtp-Source: AGHT+IFLTCFjP1DlONL3G4qd7Yt0zJsfNXtrGTXIpjdPZdy2kNFC0+8LN7/7kA0CNSw7WpgKWqqOZQ==
X-Received: by 2002:ac8:5754:0:b0:43a:e995:f1a4 with SMTP id 20-20020ac85754000000b0043ae995f1a4mr390135qtx.30.1714310284609;
        Sun, 28 Apr 2024 06:18:04 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a93:b0:43a:dc52:cd68 with SMTP id
 d75a77b69052e-43adc52cf4cls4737581cf.0.-pod-prod-06-us; Sun, 28 Apr 2024
 06:18:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9+PSuUomWeGxnh/UOHvh7ZC+SyZxGWY912WQYq4pG+rOEHmCImAwEKC7lROhUyHeQkiRvYI8sYlmd78wFB3IT7CBbblKvUE/iMDCF
X-Received: by 2002:a05:620a:a0c:b0:790:c7f3:abce with SMTP id i12-20020a05620a0a0c00b00790c7f3abcemr3614395qka.37.1714310283920;
        Sun, 28 Apr 2024 06:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714310283; cv=none;
        d=google.com; s=arc-20160816;
        b=q+h8JPoE+tqSVXfYTsjiiKqvIN1qQaHINOytFG6NtqA3MuLbsUxZuO7KzZYQiJXFpq
         OJvEw6d701aufAUJ7Yij73/XoqpK5jd7xQfBQou2Vcb+LJRCpb3ss4oWw6JS0fPcdOyj
         a/aEB8GQ1lxnli2SaGZB2HWWKTlMHbmsEgscx1704tJQyLcUyaQNhOlqhjrm31Z4VlBj
         aBFuho0FwQjFWXbfScXeYKujbanoGYtafOonzgxX0LWTe3VBd8IB+bKytdgunzoUsX5D
         mxmfrlT1z7AqUfSm+lWeCrdggcBxudEYWhBWbd20u3+YRwBqjetk+qQfWD4SdD0FuwBW
         V5iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:message-id:date:references:in-reply-to:subject:to:delivered-to;
        bh=mRyGzokn3D5KJxxMqbxTNxtfnyRLxsBsXvnqG0z06Kw=;
        fh=yP6gZX/a9xtfBNRAS7LIp1q7zW2BPLZoKidpmCKaVRs=;
        b=lxzenq7Uu60XgaaxLcZJlWgQeigH5xtgkzmao7zsrrC2waMaLlGOTv3x0oO9I3n07C
         TElfHjjpcmwlc6ix7v+QKqpFv1pAA4DEaRsJnWcm1BlH2iwGYGJCNSZUDSMBjJmtU3in
         YARkCMeaQ8dIx++jBilpRg9Mg6Ex6RI9cSh7JXeeZRc6mIrOvfayCJJAxDRgDIy3yGg/
         tif5G9UAguuDPGSJE0Fs8C+e2l6FUEFWwpHk8Lqb4A1HK//xvpauIxMdrwkF8qd9LrPI
         +SOhMOoYJH/zV3+oO0/ZO7CL302Y0QMgzpHyyUu+isujMy1SHPWypEcAY/8mepjzNrOi
         9kPA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id n1-20020ae9c301000000b0078ef1622a70si23563517qkg.68.2024.04.28.06.18.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Apr 2024 06:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) client-ip=80.241.56.152;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-1-3JW-6UWQOUeoi4jQamDesA-1; Sun,
 28 Apr 2024 09:18:02 -0400
X-MC-Unique: 3JW-6UWQOUeoi4jQamDesA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 162B338000A6
	for <blinux-list@gapps.redhat.com>; Sun, 28 Apr 2024 13:18:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 12ADD2024512; Sun, 28 Apr 2024 13:18:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEC99202450F
	for <blinux-list@redhat.com>; Sun, 28 Apr 2024 13:18:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E2DE29AB3F0
	for <blinux-list@redhat.com>; Sun, 28 Apr 2024 13:18:01 +0000 (UTC)
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org
 [80.241.56.152]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-66-QOauGZXwOMegVf46IUc6Gg-1; Sun, 28 Apr 2024 09:17:58 -0400
X-MC-Unique: QOauGZXwOMegVf46IUc6Gg-1
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4VS6Hj1h8Nz9scC;
	Sun, 28 Apr 2024 15:09:37 +0200 (CEST)
To: "Daniel Crone" <dcrone215@gmail.com>,"Linux for blind general discussion" <blinux-list@redhat.com>
Subject: Re: Orbit 20 with linux
In-Reply-To: Your message of Fri, 26 Apr 2024 16:16:34 -0500
	<B0F6315A-8C7E-4BD0-9B66-06E6DDAC0529@gmail.com>
References: <B0F6315A-8C7E-4BD0-9B66-06E6DDAC0529@gmail.com>
Date: Sun, 28 Apr 2024 15:09:34 +0200
Message-Id: <E1s14He-001Jk0-16@lapcust>
From: "'Artur Rutkowski' via blinux-list@redhat.com" <blinux-list@redhat.com>
X-MBO-RS-META: gkm11z4gzh4ua1jn5e3wr8m5uszfiho4
X-MBO-RS-ID: a3f0ba2e5d347e9a3f7
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 2
X-Mimecast-Originator: mailbox.org
Content-Type: text/plain; charset="UTF-8"; x-default=true
X-Original-Sender: locust@mailbox.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of locust@mailbox.org designates 80.241.56.152 as permitted sender) smtp.mailfrom=locust@mailbox.org
X-Original-From: Artur Rutkowski <locust@mailbox.org>
Reply-To: Artur Rutkowski <locust@mailbox.org>
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

What do you mean asking "How to add it to the linux"? Do you want to handle your braille display by the BRLTTY or something? Ask more precisely.

--
Artur

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

