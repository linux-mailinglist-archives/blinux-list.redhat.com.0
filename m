Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 759814AB153
	for <lists+blinux-list@lfdr.de>; Sun,  6 Feb 2022 19:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644172894;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N4Wi2dbbu+n1pozeP9aK/caKXXQ7MNhinatOhk59bXc=;
	b=SD/kbz2xSO55SLk2CAvsGgwv1o9nyRn3syOamZ6XQSOSNtBPdghSFZUfEsowZ8Z1jCvjac
	NgCgN8RGQxuGaJHU0isQmqv4GDL5bwyTay+fmvc4NF9ai4cPEzfdRHTMV9UiQe3ysDk8xc
	0w70ITXlwweP869N/RVhZe5C6kjdkPw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-277-NhpnUI5zPeCT7KvqZ6bpXw-1; Sun, 06 Feb 2022 13:41:30 -0500
X-MC-Unique: NhpnUI5zPeCT7KvqZ6bpXw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED609802924;
	Sun,  6 Feb 2022 18:41:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DEC507EDB7;
	Sun,  6 Feb 2022 18:41:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6A2664CA93;
	Sun,  6 Feb 2022 18:41:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 216IfIt4027807 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 6 Feb 2022 13:41:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8D3681454536; Sun,  6 Feb 2022 18:41:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 892941454535
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 18:41:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F21B3C021A9
	for <blinux-list@redhat.com>; Sun,  6 Feb 2022 18:41:18 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
	[209.85.167.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-443-9qzYi1TZNYiT-5SdyIyvIg-1; Sun, 06 Feb 2022 13:41:16 -0500
X-MC-Unique: 9qzYi1TZNYiT-5SdyIyvIg-1
Received: by mail-lf1-f42.google.com with SMTP id f10so22837981lfu.8
	for <blinux-list@redhat.com>; Sun, 06 Feb 2022 10:41:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=spQfXoryCrgfjwChSN3B+hOhkQ3pE9z6j5EUweg+7VU=;
	b=Mc9W7vI52URUpbDBAKLWq8AAzCr5f/4cY6tlzQUO8uaUDgapFMNjc7e0HVn7PsEwzR
	xWybDH9VI4FzqEicbeRHyUHV+c1ch1wvAi9aSvRB9uADKvGz3fFK5C07G7Qa0grvI1lk
	FZ4Y+DbIQs542XnvoNiHlLJfXkVRZg/70GSo30y8ASY8s8JiteUcR2COgB55P5GgPbTd
	XLVedA6NK+H5fwPSBGIv2UlqOc8URDnebyjfBVk/dasRx/fP5BcdXPJvQzcMkhJ4Es+Z
	5yXzKMEB+AI5iogvZgqUA9+bfyY86YE2Fxv7E2iSoJ6ka3Kz/3g2FdnCK57zqQZtjbAZ
	bfaw==
X-Gm-Message-State: AOAM533FlD/3HU6tV59kqododETGKDBsM8+RNo3n2digAZRPaY8bIiSU
	xBWX2/S5nt7appoF0e39HRg2Q6eSuLM=
X-Google-Smtp-Source: ABdhPJxiCmByPsBTzN+0jHY56iJZXar8/A++pxPQC4w9TapJTOFvGhEgCWCB4iVPapYw12BVwaw8aw==
X-Received: by 2002:a05:6512:68e:: with SMTP id
	t14mr6149662lfe.366.1644172874786; 
	Sun, 06 Feb 2022 10:41:14 -0800 (PST)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	k18sm1297018ljk.113.2022.02.06.10.41.13 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 06 Feb 2022 10:41:14 -0800 (PST)
Date: Sun, 6 Feb 2022 21:41:12 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Does anyone know how to switch a Humanware display to contracted
	braille on Linux?
Message-ID: <20220206184112.ol3fyk5ztvuhis26@alex-pc>
References: <20220206175340.qp4k4pd6k4dvvw6l@alex-pc>
	<F20D19EC-9AE1-436D-ACE7-747CB9C7453B@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <F20D19EC-9AE1-436D-ACE7-747CB9C7453B@yahoo.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, Feb 06, 2022 at 01:15:48PM -0500, Linux for blind general discussion wrote:
> My 80 cel braille display has no motive input. It is exclusively designed for reading other than positioning the cursor.

ok. look at this[1] page

> Ashley Breger

[1] https://brltty.app/doc/KeyBindings/brl-hw-B80.html

-- 
Sincerely, Alexander

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

