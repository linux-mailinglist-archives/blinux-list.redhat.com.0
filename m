Return-Path: <blinux-list+bncBDYPVTOXSQEBB6HURKYAMGQEQW3K7AQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7580388C195
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 13:07:22 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-43114d0421fsf60370611cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 05:07:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711454841; cv=pass;
        d=google.com; s=arc-20160816;
        b=PPe0VaD37TS6tHZUFQCJSB9jU0emG3GxNAudxJ7msi7DxeEHpcSy/nSX547GdCcRkW
         6HOuims/npmKZw9g8ziO8s3nUnQK2pzSvDDWNRHpJhvWSlelkXYVsouZH8K/MubpJVpC
         AqhJEwEzFJ8NnneIF2fUpqmSBTs77FcRcdmXhJguUuxe1UvcXri6RV9H5bPTS+oDA8vC
         HkNSgLAqB0dV+nTRH3JfUalRMy2zOvSk10Le5Z1M3uh4J76XHprrsELnf2JcNQGkMVJv
         krUAhJvpVQ5VAhL0gTAXUKl2rqO4yH2kRFGyizsBB1RHgag0Atx0zI64lIyun4SrehY+
         03zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=L/z4JEDk+izyFDuzpWTivVBsoSaqM8T8O/Ehd7cFCDw=;
        fh=O9fb/EkxuhGIvKM3gk4eHCIaUesAAmdYgKTV77W9cxc=;
        b=DTiMjXGyQ2wWbOvItyU4nMYkVptlI7Y1gwQnfQtAJdgErNqIIzOBTKvW4Q0rGx84dI
         jk00p8STGg7x94waAXxwkuqAJPy00W+1z4Lsvui2Rs7KXtBpcKNuk4R4KOxxIf/JDqb/
         PXpTLfSIqK9LnC5t+YnS+v/87Hp7mdul/8EzjjdW8+ijbTqLILgk5M+JX5GaXCspJio+
         7PobDnEpeO/4bI/bJCtfdFKfRU3zwsCWOD6k/88kNstyR95XGfq8c2PBtEPJ7t8bL2XY
         FvyRm51UrmiXZDA1VQrDPkNlfY6q2U3mHS06bkFkAj4k8HsHMT9fsELuxCPAVY3YK2wE
         jyUg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711454841; x=1712059641;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/z4JEDk+izyFDuzpWTivVBsoSaqM8T8O/Ehd7cFCDw=;
        b=W0S7bJ5IUbMfS3yvVi3JXHIUt7xA4CUtV+GT16vtPhHzQQySZDv7nVH+9UDS3wZ8u0
         DmXMSSg2rNiKq882CE3WWw8+odOvMDNlLsmu9A+W9YXH+RT3TR4J9Vpouoe/tOB8/pkx
         bA+BZ5ZwGP83554JJVgWQL0feFbKmPfdA0xoFHvxz25aX317LBm15vcG6FwBVRM86g6f
         7hlI7RuOeyUtmet8H05BD8JpOFobrc5axL0I0uIIM/zfG/kU4uS3cLzhcwIGasHh+ztD
         5kryqjI1pW4ulTepX5gfYDuSiSCznkqNPDcyrrE+QFjXsY6VaGYAB9y/V7Wo8jf1zv2W
         wYRA==
X-Forwarded-Encrypted: i=2; AJvYcCXJ2HQfvDN+ApUeyJUQmni22Y+xAJfr3/qwIgzi7eRxw6A8DPT4FCH5rrpioy9kpUYEwsqSHnE+PK017gOUfSdOGuv/Ld622Gmz
X-Gm-Message-State: AOJu0YxEHeO2PSiG+D6sgh3zJjJIkZtKLDfSctBHP86PTRrVq8ySvPnA
	c1GPqIEZGDBv2Jz6PK6LhmozORUFxPl6Bpp1rtAGBuDNKrVID5EnTZs3N4Tg/A0=
X-Google-Smtp-Source: AGHT+IG5snAzLMaYnvqJ9hD0fTMQ7XVGL9rinU99GcpBfpQs7Nvmy/qM5rzIqQjjq2BKin0HiqwKNQ==
X-Received: by 2002:ac8:7f0a:0:b0:431:30b3:e499 with SMTP id f10-20020ac87f0a000000b0043130b3e499mr2922383qtk.4.1711454841118;
        Tue, 26 Mar 2024 05:07:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:180a:b0:431:488f:e14b with SMTP id
 t10-20020a05622a180a00b00431488fe14bls4436452qtc.2.-pod-prod-01-us; Tue, 26
 Mar 2024 05:07:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUzHkhyF/Gn1HM2zj/iyv8DEX84wJSeiF4v/YWbsCpSQD5etj7wkwdvk8nKlZiA04WTqOJasX/c0+2ZaZYA6Vb6B7WJUmPK1YyX888C
X-Received: by 2002:a05:622a:355:b0:431:2a43:3e77 with SMTP id r21-20020a05622a035500b004312a433e77mr2774892qtw.42.1711454840336;
        Tue, 26 Mar 2024 05:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711454840; cv=none;
        d=google.com; s=arc-20160816;
        b=H3aW2Kh0OAQ5wXC0lfqrvkeMB0wlwezbk1FqWKdytU5xcIHkiUdVbcIUOzg2h36PUv
         rfNAE+9DhUwE93Tqpo9L8Nk2grT52e2yMwvHnU3VhjMsXe9RsdyTuFe13EYdXXINUEur
         448ViVlrpnd6MsRj+XLYIKiVG7j7gRIh/cWBHJJDZTZmmt+E0BB6n/uYKPE+hNXwyWn6
         abpm9AjyQN/aaziwflJcaWVyduEaSS6g66o74UYsQuLOu/nEonsrm0eQBoE4hSAsB4Ox
         vPwfa3ftlvPSRs1uOnKc2C31eNfBXSWOLMA/luKMqlkWQT6r10BRbQPqaCgLjoHKzklr
         mMuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=livDdcbAL/NS7W3b7zHSMxuWlovCQKJ4grHVKfyeZqM=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=E8b0nNFHOVgGwvJpX3cKeR2o11pfKOqZkzmluWeJuPXzMrr484rMcDozvz3ZkuU7uR
         Luv4Cepn97QiSEsw+IuoBUfdDuHp6l1dEFwVrjyZpmnzLcqY3rQBUWjKVBHJJsXamdR8
         ik8D3C1GnoGvE4YEtE44OCYjSFQhXliwnsMKfQwbL9jT2kWD5pFf3h8bPEPJL6Kdp1Z6
         eBhODM8CWuENbx0zANT2u69m1f52XugdAOkutXnZYBszx04GtuwQdDRI3JnBwcwVoBod
         tFBT/9z9kU9jzV/fsHFfF/8sNKdcrwXwwT8tLpbMmScdJijZDH0N72xid+rsSZI2u/09
         Kjqg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o4-20020ac85a44000000b0043162b40fd5si2642890qta.614.2024.03.26.05.07.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 05:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-350-ajkHUSjSM5C3QLLpi18XPQ-1; Tue, 26 Mar 2024 08:07:19 -0400
X-MC-Unique: ajkHUSjSM5C3QLLpi18XPQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C639C8007AB
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 12:07:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C30C010E4F; Tue, 26 Mar 2024 12:07:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89C751074E
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 12:07:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B628800266
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 12:07:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-542-r9aFFGNuMmWTj49TVHGJ0A-1; Tue,
 26 Mar 2024 08:07:16 -0400
X-MC-Unique: r9aFFGNuMmWTj49TVHGJ0A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4V3pT01LQ3zKJk;
	Tue, 26 Mar 2024 08:07:16 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4V3pT012Twzcbc; Tue, 26 Mar 2024 08:07:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4V3pT00zS0zcbC;
	Tue, 26 Mar 2024 08:07:16 -0400 (EDT)
Date: Tue, 26 Mar 2024 08:07:16 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
Message-ID: <e951fe77-674d-45f2-a6e8-556493c84318@panix.com>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

https://opensource.com/article/20/1/open-source-reddit-client


-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 25 Mar 2024, Karen Lewellen wrote:

> Hi All,
> previously, reddit worked well,  at least for reading posts, in both lynx the
> cat and links the chain.
> Now, even elinks produces a blocked error message, my guess is that the reddit
> community is not aware of Linux and these tools for access.Wondered though if
> another tool already exists that might be a part of a shell infrastructure?
> With appreciation,
> Karen
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

