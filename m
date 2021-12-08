Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AF14146DC32
	for <lists+blinux-list@lfdr.de>; Wed,  8 Dec 2021 20:27:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638991632;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q3FKNovkeN06rS4KElNA7+pNIAjq3dOc9wcxFXE4NAg=;
	b=XWxLnR98MvQ0F9n655ow8KyYsYWhJqTjJYD84lGgHCFDzvzop+yOb/U8auEQ76NbRVO2/j
	zu+a/7VhR2Cq5wQDfaYV6YB13DqGIt1ZAP2WAwlKR+Y8eQbPa7zksNujVzADd13K67/p0Z
	oP+t2ZcJMH3UajSh0yi32AxZqqzfTNA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-10-RpACeZIfPc2vm3sDG98h-w-1; Wed, 08 Dec 2021 14:27:09 -0500
X-MC-Unique: RpACeZIfPc2vm3sDG98h-w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D833801AFC;
	Wed,  8 Dec 2021 19:27:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33B0B1971B;
	Wed,  8 Dec 2021 19:27:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 786254BB7C;
	Wed,  8 Dec 2021 19:27:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B8JQvbU020124 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 8 Dec 2021 14:26:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2B0EA401DB8; Wed,  8 Dec 2021 19:26:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27973401475
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:26:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0ED403D2CE82
	for <blinux-list@redhat.com>; Wed,  8 Dec 2021 19:26:57 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-36-_Cq_AMc3MGeS4KbQLwV_kw-1; Wed, 08 Dec 2021 14:26:55 -0500
X-MC-Unique: _Cq_AMc3MGeS4KbQLwV_kw-1
Received: by mail-wr1-f44.google.com with SMTP id a18so5864882wrn.6
	for <blinux-list@redhat.com>; Wed, 08 Dec 2021 11:26:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=AOaR1WSOSQAV8/zi39n88gL+11r6kPYAHqtzuLz5IUQ=;
	b=gdl1y8cajVGPYuHM4ahExKujmZwnwzrrAFyycPFB5Gdr/jVInx/WrKtoXKuEJ4G60f
	n7ufUEDBy9m6cj2CyvQafwR+PDANZ0GCRDBKB5Fg0Fyyn2wY8UmLX2tbvHlbcZ3bzrLF
	evKqgH0xDxFurc4MbmsbZp2LAWYlx0P49rfIgiQQxtUOCebH0BrZh7R2O1g+O9QAyknW
	TeZuMrg3znNejKEmrTuXlUilNKBL/RNJF9AyUclN9QqNkIOf6twD9kPKETZjNzSyYdyx
	fnM8cf0Eenib9XTAgnkaCzIGmPeojk5yOaPzoeUU69RH03NzXAtU6cYFjMhQT1cFiaFz
	U2FA==
X-Gm-Message-State: AOAM5320J2OBeVe53pnKK6O3SoSEHLW4mEmT1oo63lIcCe0AvRHeFerO
	W5EHRq19nCMVJd/ixgSKheRQlsBfHbkmN3mN
X-Google-Smtp-Source: ABdhPJyytG8RTtCCuoBCf9a7c8nb53mASjsXDf+GJG56msLdYYjy8fJNYSAccJkUzZmmOEhE0UXbfw==
X-Received: by 2002:a5d:58ed:: with SMTP id f13mr724164wrd.373.1638991614045; 
	Wed, 08 Dec 2021 11:26:54 -0800 (PST)
Received: from [10.0.2.15] ([90.251.25.70])
	by smtp.gmail.com with ESMTPSA id p8sm3458154wrx.25.2021.12.08.11.26.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 08 Dec 2021 11:26:53 -0800 (PST)
Subject: Re: Switching to a Different email Client
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E1mv1D9-0001mn-Hw@wb5agz.lan>
	<eb106688-8ce3-d826-70f5-775df84385a6@gmail.com>
Message-ID: <a1c65317-0273-7198-6473-2db4aa1d4845@gmail.com>
Date: Wed, 8 Dec 2021 19:27:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <eb106688-8ce3-d826-70f5-775df84385a6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I second Alpine. If you can get Fleacollar to work, that could help with 
Mutt and take the hassle out of setting it up as much, but...Alpine, 
I've not found a similar utility

Linux for blind general discussion wrote:
> Maybe Alpine could work. It is rather difficult to read HTML mail 
> without a desktop, but I think Alpine can do at least some of this.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

