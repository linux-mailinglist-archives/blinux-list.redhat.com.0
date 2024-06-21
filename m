Return-Path: <blinux-list+bncBDYPVTOXSQEBBZHP26ZQMGQE6N3SSZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E589912FE0
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jun 2024 00:00:13 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4415d710702sf29177001cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 21 Jun 2024 15:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719007205; cv=pass;
        d=google.com; s=arc-20160816;
        b=UgXkDkko/1lpI75eoXWg1poMFpof2ame8oZ+OqWwUctVpiY/chknVPK+3cJY8C5DtH
         FJE/oxXMY9eovTCmsY+GIWo24tVSyYeAs15nbBoU+shLnuYSA3t8dWgff5YgMLLeE6tz
         ISU7WwyLncWAfx0173TuSUF4LoXMeKe56Wh0DUcarG4iGngouyGbzKwYmS5EGmBrLfqW
         NQGuibX39nQuP+Li9hjzlpQblmQev5NLPirSTTzFrskcB00xirqvzXaWcVU2Xt/EmMph
         +IQYwidAu28SlSwFKOggD4BHwAq6a5kP0Fp38YMAkt8EHEbBJw6sGPeuWKj5N8ULma2J
         6OoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=E9NubF7V0OpdC2M3biMQuifKhW4P79G4txjBh6etByU=;
        fh=Atennw5Yhg7lXg2YHh3hmVsJclnanTzYG/FF43FIsrI=;
        b=PSHCTjOTx+qL92lBYGLU6goIbB2IQkpGXlNHRFgybL9mSZiD+cy7fKsV98l0oII8FC
         +QqdFybX2ZFaOJvEsfA0hdnzr2IV+wfkN0n3l0p3FAphx9vNoU/EnzQiDr2naFmmAxzq
         irtD1M/DHUabSHClP0Q4xgOL5HYyC/gaBYGMjZMOZwvhmudaN+BTAjR2PikhcU6FgbW+
         FD9sWm5ZsQHgHn7Af0SBN1EQePU+uiJJ9nJ6PJQPSMQnPrLetmEUy8aThH+P2eCeIzrq
         6gD4uQOkspoBpMWdrQqm5ytX+nE+9sbty8OMRcNj/N5VEYCJg7EwKlbLYVr7rACN6Xw5
         8Vzw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719007205; x=1719612005;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E9NubF7V0OpdC2M3biMQuifKhW4P79G4txjBh6etByU=;
        b=opFxfy/NyPTEPCc4/eT569LMhmCkToCheLt6MpamDt9ielIrahAeyyr6727SXPtgUU
         pfoeQopi0N7joq0PDmFP1PXiLWm3h0wWgTmbF5H41RmMiqkqPi14HGFUlJUmCToHgscz
         CTXOPAI0PkgGBZTPfIVEYrjt8CLk7W9YI6pG8D5tOfjwQxpYuntoLOJftzBbWGLneZ1W
         ukmJ1EAeZ37dk4384jFCtDn3WMC9laxKrtwPJaWe49pFHWcqTjHb+hDvG2Qfjbkhe6NY
         dJ/Lw2OCyxsUTASZNqYrEErffw2a6cd3lBcWUZQSNxUUEubEOOutGxs7H0sRDglTJ8a9
         vFYQ==
X-Forwarded-Encrypted: i=2; AJvYcCX1r2RBAjUs854RBTwkeKeckVARChbdZC0iVFnsnkjKloWCFvusiy+OT7IsrPGJgbScpIyOiEzwkqbYN6zAqDxpZcdQ6T79BfeO
X-Gm-Message-State: AOJu0Yxxaq6CQoYaE92DG7R1biFLvKbEnlhkCWlRqIu7D9Svj6adR3+b
	B4dwZijxzqpVFOQmum0y6qTPiLobyUxZ5dT/I+pYznCoOmZn9dF1v964ax6dS2M=
X-Google-Smtp-Source: AGHT+IEWn23QFujOJOgKH5cTB34W/OMSl0e2ERGE40BdJ7aVEN3YwwLplnfG0dO8pTh0uQRLvsx3YA==
X-Received: by 2002:ac8:5981:0:b0:440:ccb8:af2a with SMTP id d75a77b69052e-444a79a9cc6mr121813101cf.12.1719007204641;
        Fri, 21 Jun 2024 15:00:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:12cd:0:b0:444:b60d:da8a with SMTP id d75a77b69052e-444b60de1bdls23484151cf.0.-pod-prod-05-us;
 Fri, 21 Jun 2024 15:00:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXSb2M1JYB/H2RwiMTluetUmFMPsNUFkhtc0v31kP9+V7iKQXnNB+KrGtTrGhGn0L2T0IiS48iu6idBk0H6QDAnZHzp/2+9XS3aku5K
X-Received: by 2002:a05:622a:1996:b0:43a:7c0d:8921 with SMTP id d75a77b69052e-444a7a60a99mr112727951cf.53.1719007203400;
        Fri, 21 Jun 2024 15:00:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719007203; cv=none;
        d=google.com; s=arc-20160816;
        b=i9RmrPIIS+h/41MvblpKiWP9VhexAoPVNygXDVohmQN8j6LvE7KvhAJz/VL4PXmMKg
         tmSWfE/eK4J7b4bsK5/6PHhM+4UNlh1vcnFxF4EvOXx6DOHsKurT02YgEmXajz/EoQD8
         UiOkm0Oc4UD6ERQp6kuIuYPZ3ssAI3hd30wx4iGhAswREVDUm+NoHL9V/UMpB11/in6X
         4xs8hDQtFWF6757OelVCCl3chOGb6lyCt2ZgMSkM1WPzTrZGysgk8ck24jUk6Ba3Qw4M
         gGxIihHbn281gHiVCF4oypbFZ+JwozsnnTOnqjSYiyNeeN1eOn4lPVNG2xCo8Bktvk33
         Wg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=h9kTPo2C/0TlG0/OR5OEVAc+wC13rkTXA5EDNPhHhFE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Sjyo+VWd5mlBwAhKYC7pwteFlEv6ENS/Emf4gOEjNTzdguy/o2r0vsntxTD3YaqyOi
         5KygPiSWb5zBbtGCCDFm9ZgDSbQTgbFEqcZhIlhANho4xa/tl8RHY9rn/Jw71TmeCNKi
         Jsgl4lu+1sS0HuhlNoiNsJs7TSvBt3XjPwRXoolmUT1EGqWbQEwL9uzLV1H/u0UVMdxJ
         F2Z3jTjWEPzeG4tXXTkS1Sr2VihmDRS/+VDM6PflJ1OxV7gPg9CMLhiILAuxsWMCGyLO
         9gAIff17yJwNvxn3SMd4Vwn8F48P+T6E8x758nVmzbRWbJYCcYhtao+zXZkiHRjMEqIW
         xyQA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-444c2c9f5c3si26441421cf.749.2024.06.21.15.00.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 15:00:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-425-e4m7fsdzMyepFk27KO1okA-1; Fri,
 21 Jun 2024 18:00:01 -0400
X-MC-Unique: e4m7fsdzMyepFk27KO1okA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0EC541956089
	for <blinux-list@gapps.redhat.com>; Fri, 21 Jun 2024 22:00:01 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F0B441956053; Fri, 21 Jun 2024 22:00:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EE4381956048
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 22:00:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 712F5195608A
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 22:00:00 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-208-PPae-GGqMtGQtG2iD4yglQ-1; Fri,
 21 Jun 2024 17:59:55 -0400
X-MC-Unique: PPae-GGqMtGQtG2iD4yglQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W5WVg06zfzJxd
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 17:59:54 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W5WVf6m45zcbc; Fri, 21 Jun 2024 17:59:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W5WVf6jCvzcbV
	for <blinux-list@redhat.com>; Fri, 21 Jun 2024 17:59:54 -0400 (EDT)
Date: Fri, 21 Jun 2024 17:59:54 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: almost have pipe-viewer working
Message-ID: <9391ea5b-a395-1a1c-2610-ac36d2ff2604@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

jackd needs to be started correctly and I have an alsa card and it's card0
with no other sound cards in the machine.
I'm going to have to have jackd ignore everything except the alsa card
since other devices like firewire and fado are not attached.
I'll probably start jackd in .profile unless it will start in systemd I
need to check that out.
This will be my first time dealing with jackd too.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

