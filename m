Return-Path: <blinux-list+bncBCFJ3VNT5EIBB7GSZDAAMGQELNL66UY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 038B7AA4DC4
	for <lists+blinux-list@lfdr.de>; Wed, 30 Apr 2025 15:45:35 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4770cbdb9c7sf140690081cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 30 Apr 2025 06:45:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746020734; cv=pass;
        d=google.com; s=arc-20240605;
        b=kbPcNZyNcOT93S6jqzetW0pX4vXGhRpHP8KpObvrNcQEzbcGtiUb7BnZ9cPHt96RwE
         6AkxSOMv6vtPnzpDU/dz3fbZ1Snob8/MdZIyD0CYWGRkf4gK+mSWYvzrSJ6Bfjv0JQ+c
         GhUmTxzKAG77d2h/N3tf31G+bHIeClA4XVJJVsz1PgdFosRbFZ6KJI8Cl2J3zhhbYrls
         JI+dZ9WBPkH+s//I5SG+W+2LPm+v2mQrAON4KyKVtBuV+/QmIwMEDvxaKmT69sA/POmG
         baPBX388PrFuwtNCIqTKcmfhceC2ChdIadUC1sO2xEBoioFzK1gPOLrWTpDVHMceStHO
         x/3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=+ZBklL/CdZZfLt1hyQUje63XHschjFaXLTrBENWlt48=;
        fh=9MU62BspXxVI7kXo2o/r4jgfdBoR4bo3aFzovOjS7Is=;
        b=FVDKF1zDQKvoFfRTJ6NIHBbSsRXj+6VO8K14pJxm2jZQhceqqQ7enfFea7tOoqtjBX
         hQBH7v/RKkFcUFbW9Np39kfq1K7NXtkYkcBxthCEgXxEiZyvXrFJB7PsjReEtG82uaxy
         eQzOBhyxU8SIGMvPDrzfYZ/46uU0sGB2rJ1MLZ+4rQw/pFyspSFnYv2OrdD6OAT9YtSC
         NEcAfStLQ4kPv/hXFBg1Spw6YrIDcDYuhD7Dyxd8Zj28IUd+Yr+k8AWqefNtBHgN1MdE
         pjyvrLTEuDRB7qW4egPtpBsSmxZYmxlu5WdZ2Wk4e1GVdqHIMRXwAhMavYKw8glE2IWG
         993g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.51 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746020734; x=1746625534;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ZBklL/CdZZfLt1hyQUje63XHschjFaXLTrBENWlt48=;
        b=iNNdoLV0bgFBLVC/4xNOyI5+YQuJHnJl6qL9X5sjrEAzKWfD1Z3zLeJPGSDCHy6ZEp
         H22x6SMEc6aMsdvlV4codxAFAc8LFDMydo+QTAAmbPnqRieLJOQKUsOKqB6PM7ehO1k4
         KmtpxGypVIftXb8NRXnF5UENGk1GPh8zWSBfiGK/wCmcDr8GaT6bNm2aRG/b8k9NptPs
         cfTDokmTWkLE+8i7+DlqJibT4X2Y2OvYBJU90RRUyzQEGFGon8c+cnTSB7wy2+gZbub+
         3w7feG/mdhkeIamX/kWSBRhgHrkORPkYtCMuE6617I6+OCYbdOcsf1Bc/rC45QoB6924
         uPFw==
X-Forwarded-Encrypted: i=2; AJvYcCXtd8cWneZ4RI1iTyOK7kzhVmmcHHVMUukiTi9OXzVpXG6CQMQNsKu4YcPy8CJo9LRkx+nqEQ==@lfdr.de
X-Gm-Message-State: AOJu0YwtRiGglFPLrXtaf9PAJiUizSdog+8TdJ4vXz4f4laUvLVO5R+R
	EOX6x6EsJcsDbjFcTJQmXedAs1C4QYJC65KyjXx/C59kZujunr2wcNj7+AE0Xqg=
X-Google-Smtp-Source: AGHT+IFS9lNWALesBhEyknen3fe6YrZkcQuhzTL/njhCyUxXQAeJcJ2vekC8SdSYfv3FtHinwg4iSw==
X-Received: by 2002:a05:622a:22a1:b0:467:5da6:8096 with SMTP id d75a77b69052e-489c5412599mr56488511cf.44.1746020733511;
        Wed, 30 Apr 2025 06:45:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBFHYgqvJJGwU5IKZMSdykQoptpPAUoMPCQhuRXMwknuaw==
Received: by 2002:a05:622a:27c4:b0:476:72e4:2758 with SMTP id
 d75a77b69052e-47e55b7f257ls105805261cf.1.-pod-prod-01-us; Wed, 30 Apr 2025
 06:45:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUw+N5ddMEza1w8Wzq3U6F88GkW3czTeBNsV8wgTsD6MBrwFdGz1EI5iWTpyYz25i1ldbt6KGlqgzBmww==@gapps.redhat.com
X-Received: by 2002:a05:620a:1793:b0:7c5:444e:3f5f with SMTP id af79cd13be357-7cac7608a63mr406092485a.15.1746020732103;
        Wed, 30 Apr 2025 06:45:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746020732; cv=none;
        d=google.com; s=arc-20240605;
        b=f4AwEQbAr9nDHd1iFy0YAS9uGURnxfqPihVOaiNMBTE48ljMKZxHnluJUxnflWVRUf
         yAAy9MKzpTlh/TfsdQtRBp/2Qyz5cfWYvhG3YeY3UjCTeOFb+B7fFoRmOGCOKj8ma7Bo
         J5vcoivwltP3xkobeLYnrmdL/wXuLTbM5nbfyhzuCJDHq74yxfeVV31KtH5NhlSmCGLH
         IPRuVL7yZZGL18nGB5wj18T35KShNL/FDJdUTH83LpB27APrAcGr4ufq6FbJ5An8Tprn
         TusZc16kEGEudIPMBtglkYhEa2JmPbYZmWW2uUkolw7EaB2LZyhD6JTBhCC2fDZpSOBo
         P3hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=Q85137t9yym2mP2knlDnfTomcqGzhjuW3dDcfP2kYVI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=JfmBuFjyksAv1hYEdN+0ulKAfifdhu93xNSONfpuwFzHjmMd8UstFSNfKOc/wykcHs
         GtKo8Xmme0umvtPUnMcXL0VVr5H+179Ayg9mJutrpVrXpV5gxLKfusKYlukxNJQkYDpD
         kfqW9Al2rD6Oi0+yCHPOZfzDCzrUhTGU8s6n6t5ezfWUP1F/M47bSsngQ9YzU6R9Yzol
         JzZ303Mf8CqPhQCglf3hbKP3T4hxVk0uf9hf2oO+s+4IKJxV9N8AN0GFXecyZYuDOaGW
         LRvDhJZUKhf9dI4Vtw4ffaP8EpbuFu32k36oOXmJve9MGvLetLkAn/O3kw4co5sWe88s
         Tfxg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.51 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c958d85fa8si1420893385a.294.2025.04.30.06.45.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 06:45:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.51 as permitted sender) client-ip=209.85.160.51;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-370-NkoeA1CIN9-awST3M9ZkVA-1; Wed,
 30 Apr 2025 09:45:28 -0400
X-MC-Unique: NkoeA1CIN9-awST3M9ZkVA-1
X-Mimecast-MFC-AGG-ID: NkoeA1CIN9-awST3M9ZkVA_1746020727
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C1F61801A0D
	for <blinux-list@gapps.redhat.com>; Wed, 30 Apr 2025 13:45:27 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 490441800871; Wed, 30 Apr 2025 13:45:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 464DC18002AD
	for <blinux-list@redhat.com>; Wed, 30 Apr 2025 13:45:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C8141180087F
	for <blinux-list@redhat.com>; Wed, 30 Apr 2025 13:45:26 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com
 [209.85.160.51]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-556-zbChDURJPyO_MumJDtseng-1; Wed, 30 Apr 2025 09:45:24 -0400
X-MC-Unique: zbChDURJPyO_MumJDtseng-1
X-Mimecast-MFC-AGG-ID: zbChDURJPyO_MumJDtseng_1746020723
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2da3c5729fcso1461796fac.0
        for <blinux-list@redhat.com>; Wed, 30 Apr 2025 06:45:24 -0700 (PDT)
X-Gm-Gg: ASbGncvqnpAFhBfOQF6eTQMAQxww7qDeTd82pBv850poXaRUalFSiDRp1wAdRMJGt9R
	8gTly8I9qKTjfulWZRYomb7HQ//zt/HZCKcRDuKYyAPDXyBYctLfR7ZXuZOAEEDiSdz0ogy6rUa
	sF1dmE8HXFmyZDjD57D7aV+G0cH6uB3bsL/LfFCk9V6eYkwoeGBQiSuYMAsHteiLyaAdiUvBTbq
	O9Ag0dXRoADUJjrrCUdNtZN1mD5COf0nPUA2oRPZQdAumAsoct3K32Vxgkh/tQfrxD3du3rWoNu
	LLW1XmxAedK+0yg7lBZtRj1g/0TUOmQ/7NmQlQ/4Bp/KPZ57/74e2mJD78bmNta9rTlcngwgUw=
	=
X-Received: by 2002:a05:6870:e994:b0:2d5:2955:aa6b with SMTP id 586e51a60fabf-2da69d102b1mr1900685fac.5.1746020723356;
        Wed, 30 Apr 2025 06:45:23 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d1ae:496a:c93f:da27:c8bb:4e75])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2da6e4f1684sm428964fac.37.2025.04.30.06.45.22
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Apr 2025 06:45:22 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
Subject: new machine, intel or arm-based
Message-Id: <B7CE5054-8121-496A-B4C7-9B153C4D51FC@gmail.com>
Date: Wed, 30 Apr 2025 08:45:11 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: d1XFQeBDL9dRbPmcJUe_TJlXGRXFJt2ItMlBy9vcaFI_1746020723
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Vmws4OhjqrK1Rax-HkUcbMsgQ55j_l4JLqpaV3GzO5I_1746020727
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.160.51 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I am thinking of getting a new machine to act as a server.  I am unsure if I should get an intel machine or the machine such as an arm-based machine.
I am thinking of ubuntu or fedora as its system.  I welcome anyone's ideas and words of wisdom.  I am reasonably okay with mate desktop.  Can use terminal a bit.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

