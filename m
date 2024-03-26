Return-Path: <blinux-list+bncBCM2V5WE3MDBBB54RGYAMGQEJ53CSOQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 1768C88B9D3
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 06:32:57 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-430cff75f9bsf63937321cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 25 Mar 2024 22:32:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711431176; cv=pass;
        d=google.com; s=arc-20160816;
        b=MtPjxf6otDHBt+/3TtGGh9sqO60zzpEeW/69mBURo6OVoER6lfrgy7yxJjFVXYplPY
         UTQk2Xhodnx/qD4/6thytAHL889WlyDl25/jA7uMnl4SbIe6eZ6QfJcoEuB91qtRMgfy
         EVGBnKyy+3sv9yXXpddU68IXRCOwdTMkf4OmdYyjGSYmVZO2k8E5/gVjMEdD+uaK08Pq
         nlvTsmS8Vyofsh+3V8fx0YT1O12EgH3QlP/KPvWNMopnamGGl3BQu+dC92Cal/3molaD
         CmiaSB+/rxYA/aIPkdJSpZdM2KlKZLSJktyNI3z+vUchVCvcirIXWZr2LJgCDgjpBDyx
         RdEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=ATuHZ88es/HhX7rHSP+NinqhcFOjybHCWWX1dBet2kg=;
        fh=OMUkxDd79ZEOiXti7stInKm/sO4dahtZm7dzLj80irg=;
        b=SIXsk/OvKl23zKIqtQPy0tgRKwkBzs5EiR95X8j00ay3Qf5w/0y0Z8B/5YOFAJBVJm
         U6FnacFK6YSekL4AtfpXhY6gshTCVz+I7TV7EF4w3v3Npw9c3GUuI25RHvXGm99ryh4f
         kJMJzGeyNTOD4yPjk9ro5/fM9lWZzxIDGJE4tAp1PmwFEHRmpOyfgJv34dHAUTxA1XR3
         UOtMt4YQpbeSGMOMxu7zHS3j7N1vVcnrb+6oZO+YfIDDjKRs1TiOBF2wLogb0HKCjcKS
         OAzXxQi/fUsGv4hoEOXLaLXbYHkQzFWZ05zVvdT9XDetT7rTAuyd36/I0or2LDY0DPa4
         QQGQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711431176; x=1712035976;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ATuHZ88es/HhX7rHSP+NinqhcFOjybHCWWX1dBet2kg=;
        b=xGg+4/1zfugz+RxheYASTCHlIQu/kSDAWBIdvSF5v6QLdjrKIdL2rwktnD6Jzhh7ZK
         7hGFqxkP0kZLhR0bD5Vdz6uQzXq8HRhbiIVaeopsrZclMGf2ksCmxQn5g/+lyIPVZCDU
         RJuQWGecLlM2gSNWiNQLPWouL2Ds08eSZTx+j0bSIRO7BTCxcVkajn3MNqTrpBH5Ltv9
         ZQB1oofWGRLOPEc9rNOZV7Qrr5U4M2xQGn93lXsrgngzynWmQCMCRMQcUxd6FV2k6n41
         d2qp0QOrBnYK9dhEi5DIh5IKFemiZvxAU5ESVF322NpA3FuoXg9y3P1nITPoLEtnxFk6
         MSJQ==
X-Forwarded-Encrypted: i=2; AJvYcCU9KV+OLzThVLxpSGA5KDJQmbuv9vcCtWXakA95FyH7od+O+Uxc1sl6elI8cTYZImPTyPGePYC8P95GAVJJtkiLRfFtafX/Ddvy
X-Gm-Message-State: AOJu0YyHA+umniBSiJyeXN44u4ohSAR7R5wxTwowZPWU5WbhUoYivroZ
	71kKbRORDgRcLsJCU04KNd4cmXGqN5BmFrX3cNysgKkshLPbvlySm9uPuexvKQ8=
X-Google-Smtp-Source: AGHT+IFBVBmE6IvpRh0KIB4eOr/3IHEoedMENUE1W5JZNclcJYU9S/X/i71H9roRThd1Kdq1ohmriA==
X-Received: by 2002:a05:622a:4d0:b0:431:2813:8075 with SMTP id q16-20020a05622a04d000b0043128138075mr10635853qtx.66.1711431175742;
        Mon, 25 Mar 2024 22:32:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1314:b0:431:5f32:de48 with SMTP id
 v20-20020a05622a131400b004315f32de48ls2028174qtk.1.-pod-prod-09-us; Mon, 25
 Mar 2024 22:32:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWzzLMALzD7ddxTQDmf7nWMFKJZ45taQHj9rHXhm8r4s8Ccq3BXqmuEy98M3AdX5RoXurV6bCMIdywjh5zXMfka9rAN7Z5hsEroFlvN
X-Received: by 2002:a05:622a:5c8:b0:431:3012:6cff with SMTP id d8-20020a05622a05c800b0043130126cffmr10356294qtb.28.1711431174869;
        Mon, 25 Mar 2024 22:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711431174; cv=none;
        d=google.com; s=arc-20160816;
        b=JBXd0XwodF6bjFThs9I/bL7GkPAY0SFhN0x76EjBFAHP+7khPyTVTqA48Lm2rsPvFJ
         fJ+FYFrGkp73CbVY4K7LviIi9QmqaOy7QropnLjLPCkQAQsUoOz50t8rCFCanWREts60
         5Cc5LyKlOmRbC252B8t3Z/NFUQicS9Ntj79wAvhaRJUrda0qkkdyb2Uv78H7AfO//VUt
         kG+onUBS9KktLRH8QsTJCux1rWbJVaIsvU1tIDjWuG+IRvsfkoRWkyjzIt+BgYUcgijy
         ARxqrr57hjylbTf4tzYQ7N9FT1+0IDR3MM/pResbyQE0kNmEFGv5po2JcFC6sRRCymLa
         ANVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=ztcZ3zqWk5yYztblCxG3Oh1pQb3lixb9/e7QxJMkLrg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QOKYNdHOyIY3o4TI1x0yHWfge45qa71lBqf69ghFtGuImfOOAGzYUT60lMfhhgeXte
         e2WwciYxsqtcYPkkI2N1NZNoxOJ7Iy/OMPjIKtspKh4nRtbOAZyNYK4dR7wtISgw795U
         DbfwMyk24MhJyst0Gfo+4DcGftwrU75a1WyooUfecIcb2PCR/JJts7MGjGD3PFO7ri6l
         4Ndjeub9hBNEZy6/RZ94azoy3PWOU2wUlhKYbLmeMwUlrcqyQHVM+ezBSrPQpC73OiFj
         tUzwj478Lfs9UBsR72fS5ZqD2fXjWF9fP9cU3FVYizgpj2M3QmYGVLFR10r7i9QaEeyv
         N8MQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id z18-20020ac87f92000000b00431404dfc29si6298228qtj.61.2024.03.25.22.32.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 22:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted sender) client-ip=185.70.43.21;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-649-9jqA0qJMOgOngCRwTZSD9w-1; Tue,
 26 Mar 2024 01:32:53 -0400
X-MC-Unique: 9jqA0qJMOgOngCRwTZSD9w-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1F0B3C0ED47
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 05:32:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EE9EF492BD0; Tue, 26 Mar 2024 05:32:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6147492BC4
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 05:32:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F67A29AC010
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 05:32:52 +0000 (UTC)
Received: from mail-4321.protonmail.ch (mail-4321.protonmail.ch
 [185.70.43.21]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212-EjDm3mTuNP2mvW4ZaC9D2Q-1; Tue, 26 Mar 2024 01:32:49 -0400
X-MC-Unique: EjDm3mTuNP2mvW4ZaC9D2Q-1
Date: Tue, 26 Mar 2024 05:32:32 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
Message-ID: <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
In-Reply-To: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.43.21 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello,
for reading, I'm personally using the Teddit frontend, which should work=20
well in LYNX as well:
https://codeberg.org/teddit/teddit

My favourite instance is thisone (since it's usually free):
https://i.opnxng.com

Best regards

Rastislav

D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
> Hi All,
> previously, reddit worked well,  at least for reading posts, in both lynx
> the cat and links the chain.
> Now, even elinks produces a blocked error message, my guess is that the
> reddit community is not aware of Linux and these tools for access.Wondere=
d
> though if another tool already exists that might be a part of a shell
> infrastructure?
> With appreciation,
> Karen
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

