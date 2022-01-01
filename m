Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0342D48284D
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vt61Dc56zjVv/Ho50vDb+oEgXKmJbZDh9fgOZ6+6Mpw=;
	b=WJyJJoDE27V6jrM4TJS8Riw/XoMqFOVU+5KJouKHTAKWRLKDo6ag/cdAEyasntVFJMOe6Z
	+1+utjFhNEWDln+RKVDU6Uq67a8o0oFGBQO6b+eKltwsLzO/gxinirROQtNp+XIDbe5zWD
	gQzXhtAzb1tn8J2i7HGRCCI7+mIgjuM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-654-u3hs1FJfOrqRnYfbEK9M0g-1; Sat, 01 Jan 2022 14:18:55 -0500
X-MC-Unique: u3hs1FJfOrqRnYfbEK9M0g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2009802C91;
	Sat,  1 Jan 2022 19:18:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A51F60C17;
	Sat,  1 Jan 2022 19:18:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D26DC4BB7C;
	Sat,  1 Jan 2022 19:18:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JInqq014745 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:18:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8B4FE40CFD13; Sat,  1 Jan 2022 19:18:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84DFE40CFD08
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:18:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2C811C05158
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:18:48 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-131-4-5sSxrMNUWfkSmZCj4MtQ-1; Sat, 01 Jan 2022 14:18:47 -0500
X-MC-Unique: 4-5sSxrMNUWfkSmZCj4MtQ-1
Received: by mail-qv1-f42.google.com with SMTP id ke6so27427624qvb.1
	for <blinux-list@redhat.com>; Sat, 01 Jan 2022 11:18:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rFV6nnHtjqswPSi0/UNZPZsMNsQoLbAY4k94j1CYz0U=;
	b=1tiYs8ZM+RwxtaDITpr7ndH35BDQFFUL60U2n0JkaZQ+W8ySGXC8fXX88HlXav4YKx
	GzvZwl8nNDENkrTC+e69g45XzweOGqwEAZvcbNU28Eo6eqCK+/gHO56dG9U238OlHknx
	5yNkI6VwhUHR0tDz+DLudrOCl/M7Q7N9Q6kUvJ40EnjDTKAIRFi7wF68pzzntWMGs5+e
	2PkHPEEgO/g8t60CaSNdhX5jd+NoCqnL67k6I6Dzz1AfmA0cMw0Mrmz6i+fWTLm3yMoe
	+88V8xlZnYHEvJd5kJe+cFYB93sZ11zGZFXCdM2puZ/z0YMNrHus51CFUzd51sTPMptI
	ctLw==
X-Gm-Message-State: AOAM531GuAf05ao2r1zAOhv6UB5dQq9MULKUvn5xfpBKWHZdotyVsx/s
	A0yzx+7PQPpcaWQ59f5FuVvMGIjA+wE=
X-Google-Smtp-Source: ABdhPJzwXvpZX2I1Qo0Xk5bp86J5jeUR1Ihl0am/ZBQOT9G/A2n+RBxDNAJ23tZ8/9KakSU7W1sltQ==
X-Received: by 2002:a05:6214:c4f:: with SMTP id
	r15mr36648612qvj.22.1641064726537; 
	Sat, 01 Jan 2022 11:18:46 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	ay42sm23147160qkb.40.2022.01.01.11.18.45 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 01 Jan 2022 11:18:46 -0800 (PST)
Message-ID: <92483ba2-4fcb-c333-5025-257f16e3dc20@gmail.com>
Date: Sat, 1 Jan 2022 14:18:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
In-Reply-To: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm guessing/hoping the partition that has your deleted file has an ext4 
filesystem. You should be able to recover the lost file using 
extundelete, although if you write anything at all to the SD, it will 
become less likely that your file will be recoverable. It seems that 
other filesystems make it more difficult, if not impossible to recover 
deleted files.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

