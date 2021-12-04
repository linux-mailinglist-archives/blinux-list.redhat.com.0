Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A70468724
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 19:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638643856;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=81dRUrkmNZT8vFDyZsz8D05/hlg4rEelr1J3BhPveSY=;
	b=JgC+NNcloVUOnJJho+TbiqpckBL225UD/aYWM++D2RqDNjEXRObq4x9dT53gXa3RHdHQZr
	cuR4+ahNW0MR2gRYxHOzmcvDCUFtdElvdvZF78wGUSJofcAJ+HY+SD/LZKOH0WqoeLHQq3
	7rWTjBZCJpBf+f9QXgknKVXLTbVdLgQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-16-dRhpbQ4xN9mbyEDg_jXPBw-1; Sat, 04 Dec 2021 13:50:52 -0500
X-MC-Unique: dRhpbQ4xN9mbyEDg_jXPBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39EFF1030C20;
	Sat,  4 Dec 2021 18:50:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85D7060BE5;
	Sat,  4 Dec 2021 18:50:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2F704BB7C;
	Sat,  4 Dec 2021 18:50:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4Il3Wp021008 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 13:47:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E94D401E3C; Sat,  4 Dec 2021 18:47:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59A7A401E32
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:47:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 40CA810AF7C0
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 18:47:03 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-4-Ofg3qFeIOX2vO3Y2r6TxBA-1; Sat, 04 Dec 2021 13:47:01 -0500
X-MC-Unique: Ofg3qFeIOX2vO3Y2r6TxBA-1
Received: by mail-qk1-f175.google.com with SMTP id m186so7100199qkb.4
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 10:47:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=pl0YsoEiV/Q57Nwp/8uQ/7uKQY9EXHy8cRPW6E90D5U=;
	b=WGJuGH3DhK7b3SSXBkh3oL+dGqs+I91fnTtS1PAGLvfh1wSlqE4mAeSzLQncofC/jf
	X9w4iUg9pKf0v3s/qjOsYB0d/wDrskrJPJLnKbcOiMxlF7klZ4LC1w39t+3gwdvq2lih
	UBQj0tiJN0WGoYZjmZ3beZusCxgqZC7lOCuVMD/c0BBfGo0jpUEJEkZnv78jJV5N1e9d
	Nj8CncVXdX4nbkebwJjDLi4LEfde7zorBTU53swyG4on9khJvzsNTGytMzF7lmhi7Xlk
	nhX19UNoy7oinJcn44iobUlv3GGo7IvxXrDycJh1TEoaSrnMyS4jZLd4gtXpBdGjiEl9
	0WUA==
X-Gm-Message-State: AOAM530k/BSv9bgXLfRwpC/15q6moL/coU/tHdrqb4mS6RIMFEQlIOCm
	KjoFXS9K78v+v2GUuu17Lm/97Q/VFcA=
X-Google-Smtp-Source: ABdhPJylgjXMDHiW0mwEj1kq0mzhEJ7QrhUyc5wV7/LGTitr+BOz3u/AcYs7TRyIZBlGr8HZHIMTfA==
X-Received: by 2002:a05:620a:1aa0:: with SMTP id
	bl32mr25081326qkb.140.1638643621210; 
	Sat, 04 Dec 2021 10:47:01 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id o4sm106102qkh.107.2021.12.04.10.47.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 10:47:00 -0800 (PST)
Message-ID: <b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
Date: Sat, 4 Dec 2021 13:47:00 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
In-Reply-To: <02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I just found another file manager called spacefm. It appears to be 
somewhat larger than pcmanfm, but it doesn't have the libfm dependency, 
so that functionality seems to be integrated into it. I have it reading 
my files and folders right out of the box. So this one could work. Best 
of all, it pulls in no dependencies at all from what I can tell. The 
problem with spacefm is that the latest stable release is in fact quite 
old, March 2018, so it most likely will never see another update. It 
does apparently have vfs support, but it doesn't use the usual gvfs back 
ends. From what I've read of it though, it does seem to be able to do 
automounting and that sort of thing, as pcmanfm can do.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

