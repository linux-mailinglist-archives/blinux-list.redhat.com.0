Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A8A843D2F86
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jul 2021 00:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626991773;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3/a1kAdpYJfk9doLX+tttwibEm595PMrG1oCGWulahQ=;
	b=Rk56xQywWt9BtmsPgsIJg+YzlljeI1nZOEGD+Jmcfe/5mH0OIdNLnpSTTAoeYd7Wi2kekf
	3/mPC3jBSR3M3Pm3f7bWqMusmeF4CkKUdktNF6VaFkBM1axVELYMFx2Qdso0gXj2WvyPNj
	YNrM0cskCk2DCAvuP0lrTJYltluWICc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-B6tu99crM3-YLKhOK9U_JA-1; Thu, 22 Jul 2021 18:09:31 -0400
X-MC-Unique: B6tu99crM3-YLKhOK9U_JA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA72A3482D;
	Thu, 22 Jul 2021 22:09:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4C9A60862;
	Thu, 22 Jul 2021 22:09:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4ADA44BB7C;
	Thu, 22 Jul 2021 22:09:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MM9I8n025107 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 18:09:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 76FE12041AB6; Thu, 22 Jul 2021 22:09:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7220920357AE
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:09:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BFA0F1064C75
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 22:09:15 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-441-EAAZ6HcxNqihEk2Dg-L6tQ-1; Thu, 22 Jul 2021 18:09:13 -0400
X-MC-Unique: EAAZ6HcxNqihEk2Dg-L6tQ-1
Received: by mail-wr1-f44.google.com with SMTP id b7so253732wri.8
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 15:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=lJ1KmT138ywXJW8PkOdu5N4IqtEJucdy6lHOn3U/b34=;
	b=Ei7wQoQE+R+RLDHl4Z+6R+l1MzuNaZ0QtvgQGYi3PkZs0PeUzo6Q3Yt7vNA+NVqKmw
	QB0+hy+Fh7OjPBNa1/tdlSMdLbKDeH2vwfynflk/9RfOW0FpC0K3lbN4fvikjXUBmAN5
	M6nUo0hxFuALT7fSlyfIoaVEGvDzhSvffw5wMZDnvHW0Wj6H0uAZ+W6Y/n7IPm2pJZxb
	oJRD6GXnW6aQjudLjqyIOTXDZjrYagSwZj1IawoJeb6bxjLy7wJIPC/zkjCqHRxbHepd
	zid6/AWQPkRihyeJE1ZUvA4uaiPqdZr7uHh2zMEotPgbxj0VHLXvcpdwJ2T/aS+IqpDs
	7uXQ==
X-Gm-Message-State: AOAM5310Z5UMyVMDT5aT9uerseHhtjfHJ9ds6aW13ytW6fGknxTwAa3e
	2CkWw/dcMpf9rw2eB5p6xn+Fmi8/YcEQSg==
X-Google-Smtp-Source: ABdhPJx/Lh8EzTt5/0NngpOpUZhIrLoku1AuniCqtevLJARTSvWNjxsMp+a1GzQk4VJ8eXUyVaTveQ==
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr2035545wrs.301.1626991752213; 
	Thu, 22 Jul 2021 15:09:12 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	o7sm23781187wrs.52.2021.07.22.15.09.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 15:09:11 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Did FF90 broke Orca and speech?
Message-ID: <ca53e68f-2567-9c5f-42c4-179e5e9f9e89@gmail.com>
Date: Thu, 22 Jul 2021 23:09:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Not sure if this is a solely me having this issue, but after doing my 
Solus upgrades, Firefox went from 89 to 90.

That's where the weirdness begins. ssentially. Some keys are not 
working, while others work but don't announce output.

For example.....open up Firefox on my machine, and want to toggle 
between brose/focus mode? It doesn't announce it but does, in fact, 
change the mode.

Same for time being announced. It's not read in Firefox. So I'm not sure 
if it's FF90 breaking things, the addons I've installed, or something 
really, rreally weird with Orca 40? I've only changed the default search 
engine o DDG from Google....and this only affects Firefox, so not sure 
what's going on

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

