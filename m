Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B8A4623DD
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 23:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638223262;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e2qYyx3NRxlxmxTkg5rJ23xEI2NkBwiuFBCE9zp7hUg=;
	b=RxT6WNE0ShzWaNuR7r3KPV4ymLs/uPrFBcbNWQ8PqF1NXc2SQ2MEtdqxS1tCqV8MWW+AlZ
	qBsPsUaBTitAFJlUoMzKzZhozjlDEJLPBU2QUDSky8CrRS8q+oYuMekEv8aZQMH7GT99Vs
	PQaLkY/N6J5iF0rMEzQDJFSk1I6xi2c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-559-2pBxOj9xPpKa4e01Iq7Plg-1; Mon, 29 Nov 2021 17:00:58 -0500
X-MC-Unique: 2pBxOj9xPpKa4e01Iq7Plg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90F83801B1C;
	Mon, 29 Nov 2021 22:00:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5279319729;
	Mon, 29 Nov 2021 22:00:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 422E64BB7C;
	Mon, 29 Nov 2021 22:00:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATM0lbW012225 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 17:00:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AB147492C3B; Mon, 29 Nov 2021 22:00:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A6F78492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:00:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8DCED185A7B4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:00:47 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-74-0oI7ZbTeNT6zNmrnkGnhmg-1; Mon, 29 Nov 2021 17:00:45 -0500
X-MC-Unique: 0oI7ZbTeNT6zNmrnkGnhmg-1
Received: by mail-qt1-f169.google.com with SMTP id z9so18164700qtj.9
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 14:00:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=SaCeELkkxAwC5vW3PuXOji7upKXomxmEP2+/wuziGc8=;
	b=i2tn3XDpCrpoW/n/76E9YgaF9AeuPv0XYUq67b8rbbv3B+ER1vqxusEI6kVx4HyNZh
	LB3dB4R/vrmzMUtHbpV1xxxFg+o+aB4ECNK50Os8KRSvCBhlJ+Ti9EM1YiP05sGXgKzc
	NqlaUsj+RuahW+QZe6wOx3LyUzCN+akcXXZjjv3qeSikO0TVZUY2ak1JPIrOpCFC/X5A
	GEaw6cByDqGPhS3DZsATqg25RKe9ydVIJl1heVCsXW7Pr7pNnr/CZx4+Dd37PDMOrQLl
	uKhrlsg6NAc+uQcYlbou0IzXZVkxaZf6F5XIXye4zvctg1TNzCh+c4i5vgRNU7JO17Gl
	Dpdw==
X-Gm-Message-State: AOAM532ncGgHPBRbSj6qaXK0PQ8IfACUeK2m5IA2+hfkz7AOmIBUc6MI
	iZcNm/2szOLB39h3zttn152dy2jwU8M=
X-Google-Smtp-Source: ABdhPJzJjDc7NSn1EKwqBPJE/YKXLaZk6Hv0n+Ir7DX08xI/CWmTZNdonLMd+BMzMCVN8UDJTOt6oQ==
X-Received: by 2002:a05:622a:1350:: with SMTP id
	w16mr46990000qtk.394.1638223244099; 
	Mon, 29 Nov 2021 14:00:44 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	bs16sm9229621qkb.45.2021.11.29.14.00.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Nov 2021 14:00:43 -0800 (PST)
Subject: Re: Pipewire and Orca and audio
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3f05a646-0fcf-7f37-6319-11341ad34e0d@gmail.com>
	<08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
Message-ID: <818bebb4-6239-f67d-fb94-012322f7ef66@gmail.com>
Date: Mon, 29 Nov 2021 17:00:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <08ca01d7e569$5cb7dfc0$16279f40$@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I think Pipewire's idea of your hardware is the real problem here. Pipewire 
actually has access to hardware and jacks and such that Pulseaudio can't even 
see. For example, I put Pipewire on an Odroid N2, and for the first time, I 
could see and even use my 3.5mm audio output. I could only see the HDMI output 
using pulseaudio, unless I plugged in a USB audio device. That said, HDMI may 
still be the default on many systems, so this could be causing a problem.

On the machine where you can login but have no speech afterward, you may try 
running mate-terminal and entering something like
sudo cp -a /var/lib/lightdm/.config/pipewire .config
sudo chown -R 1000:1000 .config/pipewire
Since you have no speech after login, you will need to run those commands 
blindly, but this should fix your problem.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

