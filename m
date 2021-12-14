Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D46474C8F
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 21:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639513227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Thk+oD3iPB2MdTxm7qYfZwERBdYYq6RwAGRcW1GDzRI=;
	b=D1Goclu+L6/14uT3+Rv3CZHEu+xWcllctCsiEcNI18CRY0GPwI+QYW/00VY02xKkPbodAa
	9GQUQF+pn1qVx1UBdzqImotKFSnj6ZT7JrGxxYd+YK3qma6joU9uudVWqvx1fJ8sFCz3YX
	fC2UucMgRK3+bS8UAqDLhX1d3bvcFt4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-224-j5r8GnzGM4GGbkjE50Bh8A-1; Tue, 14 Dec 2021 15:20:24 -0500
X-MC-Unique: j5r8GnzGM4GGbkjE50Bh8A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFB9A81CCB4;
	Tue, 14 Dec 2021 20:20:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2AE675F6C5;
	Tue, 14 Dec 2021 20:20:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 075B14BB7C;
	Tue, 14 Dec 2021 20:20:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEKK3YJ013525 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 15:20:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D90BF400F3F4; Tue, 14 Dec 2021 20:20:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D47D1400E137
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 20:20:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC09A1064E69
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 20:20:03 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-447-Vs3wiadfMYK5TfBY5ik7Ng-1; Tue, 14 Dec 2021 15:20:01 -0500
X-MC-Unique: Vs3wiadfMYK5TfBY5ik7Ng-1
Received: by mail-wr1-f50.google.com with SMTP id s1so269858wrg.1
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 12:20:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=MzF+Y21SDaHsIEZZKnhPWCYC4CxqSNmr4mc9Eo/v5jE=;
	b=XIMMKhj28bpN+EzlObK2GlZmk7OwWsaDkAh08r3uIwELcgkBrsQlHWsYlG5OXIlsiz
	9Pnvn1JAsV8Xrgfz7k2bP+iEtR37a6IRFFj8V2zjomZtvlu70vcOVEcHd5QFhrZnbOK2
	MlE1BXfrltd2HBlwRWHxiFgmhQSCbjqazFAwFKIy7wer76NGNszFiKxhbPj7g5nm+XqJ
	tvm22pPLMeTcC0E2z6Io5ARTtI8QbRThIFE8ul4I6vsA2Znb4nUwCRRv325Q/k6zXD/1
	2b5FtdAjqYPruNcKU5NqJb4om51EvfKFeccJC/tHBptIKUIw8xUXe4xrM4A4pyPbaib7
	bV8w==
X-Gm-Message-State: AOAM531laBtd98xTNQ7283RtB8J47WB9VSHJgU6MGtgdJh0pXetwgFJO
	Y5//CEeXU3ViB7+3M2TUoWHLTwA1YIFu0w==
X-Google-Smtp-Source: ABdhPJxnTrNabQ6ZeDT8SUIokVJ69KLMtOz1sCzs5hWphApZqVX+R+qjFx6T37+H7kNo1zzsmcIoCg==
X-Received: by 2002:a5d:4575:: with SMTP id a21mr1394341wrc.193.1639513199883; 
	Tue, 14 Dec 2021 12:19:59 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	u10sm1178054wrs.99.2021.12.14.12.19.59 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 12:19:59 -0800 (PST)
Message-ID: <083d5bb4-eaf1-878f-c2d2-364846172c9a@gmail.com>
Date: Tue, 14 Dec 2021 20:20:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Lightweight terminal with select all?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

So quick question.

What's a good, lightweight, Orca friendly terminal that I can select all 
the text and copy with? Lxterminal doesn't, unless I don't know the key 
combo, have a select all option?

I'm looking for one where, much like the Mate one, I can select all, 
copy, then paste into (say) a nano document on another tab.

Basically after something with few dependancies that I can run as a 
terminal emulator so things like Screen are sadly out unless I can run 
that as its own emulator without launching LXterminal first?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

