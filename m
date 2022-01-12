Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB7648C70C
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 16:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642000851;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LdTq3I0k3vY2x3wPst4LaM2/fDw4ANxoOLWFZYE3dXM=;
	b=erimHSacuP+N7NpTA+DXx/QlzpX7aRNAgXErfLL/rHEnnZ+Zd2Iw+dd9LaZZFyasfyCVH6
	+RmomhroLR57AFkCITxABEx1qZ1/1zocR5aSyEmpPhaq6m3jpO4JQVA/N2AcU7szFYIXOL
	XDfCR1iDzMkTSUjm2HZ7ryHUG/X+WQ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-17-Wq9S6iN7PE2DRbqjpHM8eg-1; Wed, 12 Jan 2022 10:20:50 -0500
X-MC-Unique: Wq9S6iN7PE2DRbqjpHM8eg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C1B4100C661;
	Wed, 12 Jan 2022 15:20:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 916BC74E8A;
	Wed, 12 Jan 2022 15:20:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75FB51809CB8;
	Wed, 12 Jan 2022 15:20:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CFKJhs023143 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 10:20:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CBBB9492D47; Wed, 12 Jan 2022 15:20:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7CD1492D46
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 15:20:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AF004101A52D
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 15:20:19 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-546-Bf6CqhxkMDeuD8X8ZJ13RA-1; Wed, 12 Jan 2022 10:20:18 -0500
X-MC-Unique: Bf6CqhxkMDeuD8X8ZJ13RA-1
Received: by mail-qv1-f53.google.com with SMTP id kc16so3268903qvb.3
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 07:20:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=0TL/mHAowx7CyUYisPM9kqvf0rQy0I57R7j1PEZLgng=;
	b=qp95v+KjtlQhGXBjFjJm8UWreGCyNM9bJqKYM/FlvURKASZ3vDsJKzs17rwrSTH/3j
	ANslm14A2IKY88iGRXQdiq/EUEHbWLmoNYGBQpNiJtBErfrAbiSh9Uliz7VBkHsk4G/h
	Pbew1rhg2jmez6GpXu6Lqr8qF3cF2+btBMDGNyPnNQUShRhbA85+ncmVvjetLQWrNXCV
	pjFPg56qZc/xu1B6w5ZAhi2KnU1eCjMgCbd6hGb8fKqTDzaYYCfg5JFqtZaN8gmoxswQ
	v1aHOoEAoE4bow20F+81kv2HbQCIjLbYcwjDIyyX/scJS8ReavKsPil+13kA9zvlAqWB
	lzQw==
X-Gm-Message-State: AOAM530s154Mq8B1beLpLDejmu4HxohIHizGpsyP86G3AqNuiE5o+xGM
	GbPhDkW5r/F8cJo8zJKJnaqhbhUviNiv2A==
X-Google-Smtp-Source: ABdhPJzzzz37i+Hu8Lv8KDVKJyiB/EwfM830r14CEfdWyRzC5xW4MQkHSTT+X4U3srhdUt/1iBE04A==
X-Received: by 2002:a05:6214:2686:: with SMTP id
	gm6mr208553qvb.24.1642000817567; 
	Wed, 12 Jan 2022 07:20:17 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id g5sm27501qtb.97.2022.01.12.07.20.17
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 12 Jan 2022 07:20:17 -0800 (PST)
Message-ID: <2cacb971-28b5-30a5-d6e2-4aa40a7c010f@gmail.com>
Date: Wed, 12 Jan 2022 10:20:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: MPV problem
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
	<ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
	<030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
	<15e33618-54f2-8516-271c-a3b050dc6d20@gmail.com>
	<7e483b15-919b-b9ef-6fe4-60cc39a6da71@seznam.cz>
In-Reply-To: <7e483b15-919b-b9ef-6fe4-60cc39a6da71@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have an mp3 file that is nearly an hour long. I have randomly saved 
and quit throughout the file, but I still can't reproduce the problem. 
The file is always saved at the point when I press shift+q, and it 
always starts at the position that I saved. it whenever I open the same 
file. I didn't play the entire file at normal speed, but did use arrow 
keys to move backward and forward, and mpv still allowed me to press 
shift+q in all cases to save the position where I stopped. My best guess 
is that there is likely a bug in your version of mpv.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

