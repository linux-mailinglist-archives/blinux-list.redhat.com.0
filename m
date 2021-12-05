Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC0468AC7
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 13:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638707286;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WPdDnHa7DNF5vpl0mpnM9HXYzrs20RZctn39xHw8zSo=;
	b=h2zslZf7J44gmGtoP5wTnUoIo2o82Aw2CU7uF0IqNMUYmbqYO7Cf5OBDGNID+539B04UKD
	FIoCfRmt8Edj5E9Y9N3VBLSKef/N12q/FSO/lZ+p4Y6OTpzqLCUcd2gufB5OgYQQNLyIBA
	Q7LPcExrYx9DgGHemWFBFLMG7qoARBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-i_XevWpPOmOeu9qPLbh7ew-1; Sun, 05 Dec 2021 07:28:04 -0500
X-MC-Unique: i_XevWpPOmOeu9qPLbh7ew-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9281180830C;
	Sun,  5 Dec 2021 12:27:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DDD41346F;
	Sun,  5 Dec 2021 12:27:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCA6D1809CB8;
	Sun,  5 Dec 2021 12:27:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5CRhfO023519 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 07:27:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B84852026D67; Sun,  5 Dec 2021 12:27:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2F5C2026D60
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:27:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3AB185A5A8
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 12:27:40 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-389-GER6_C6rOqC1sGYCv7F4tQ-1; Sun, 05 Dec 2021 07:27:39 -0500
X-MC-Unique: GER6_C6rOqC1sGYCv7F4tQ-1
Received: by mail-wm1-f45.google.com with SMTP id y196so6009191wmc.3
	for <Blinux-list@redhat.com>; Sun, 05 Dec 2021 04:27:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=NvMC67D/hYHueDtaUVTCfzSAWtW7eY/OsMIrk35Lzgk=;
	b=Em2aUs+CMaG05FDezar0Nt+IgzVieih4MWyXJP/c0B8lT+mTVZsBIIs6Ahn9SnHNKY
	mm8sh566WpTtzbaNJZ35gxWVmHzplfYU7DsYglvRg4fG9kTQkrHfSQyRCZ5VZUvzNAxv
	mQ2m1M18cv/hWyqlajnr+nQJi/fUEhzoxeWFwLk/l1WYIec1x++fiQAc3l8UgJrApQOY
	BKsUZo65q3vCCoURa6wgSVNOUVjoUM87Pa/oPECT+3odCkWEFax4Lvx+RU4yx7/K5YL7
	LwUHrXBfsfmEguYq4obuQYd5Hd+wcJ1pSysu8VQuZ+PmB2w8f75MEnUp43f96fO2xLcY
	E/lA==
X-Gm-Message-State: AOAM5339GlOZy2EYEjuSMRJ5J6gmvuL0R3w2JuLWa8GEvdVgXux90V2+
	heqhncan7GqFxEdgSB3Tyw4ovBg7IQo=
X-Google-Smtp-Source: ABdhPJw+XUegYHp6J8JfGyVw345SLe0upQAZ6Wno5t+icIc7NCLUb+V0NzaljQIV9Vt7AL1+GC3Fcg==
X-Received: by 2002:a1c:a710:: with SMTP id q16mr30972459wme.138.1638707257959;
	Sun, 05 Dec 2021 04:27:37 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.36])
	by smtp.gmail.com with ESMTPSA id v8sm8064116wrd.84.2021.12.05.04.27.36
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 04:27:37 -0800 (PST)
To: Blinux-list@redhat.com
Subject: Useful aliases in .bashrc?
Message-ID: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
Date: Sun, 5 Dec 2021 14:27:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I have never really played with .bashrc, but have found it rather useful 
to add a few aliases to it.


The one I find most useful so far is the alias to my "startwin.sh" qemu 
script. I use


alias windows="sh ~/qemu/startwin.sh"


instead of having to type, every time


sh ~/qemu/startwin.sh


If you have any useful aliases to share, please do?


After all, why should we not make each other's lives a bit easier?

-- 
Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

