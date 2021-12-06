Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B183B4690BB
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 08:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638775157;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=K95Zf1YidKZaxCfpmL0wo+nVfLWWAadoMm+sOG2s22E=;
	b=HKVsRpVEdw6y5y0Ad/2PVz0ox4H9Hrc4TzKc/KyRJMJSaeWExbYM3I/PqGaORGbKT0aLuR
	ocXWU1O4T4MYaRlQINCOfgXmeI3Me97CCzMdGA4qx9JnxOX+6/zJsHs8Zs2rB2nnBemF4T
	YbYT5NecWOdSzcIIbB1jWpRS2I1lIjw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-3-WPGGGaYuODSu_M3KUoSeVw-1; Mon, 06 Dec 2021 02:19:14 -0500
X-MC-Unique: WPGGGaYuODSu_M3KUoSeVw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 69E9810151E1;
	Mon,  6 Dec 2021 07:19:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76BBB5DF2B;
	Mon,  6 Dec 2021 07:19:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9869B1809CB8;
	Mon,  6 Dec 2021 07:18:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B67IqfG006020 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 02:18:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1D28A2026D69; Mon,  6 Dec 2021 07:18:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18D1F2026D67
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:18:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BF05185A7B2
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 07:18:49 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-526-wsbZyGM5NZ2vPK3xg9DdGA-1; Mon, 06 Dec 2021 02:18:46 -0500
X-MC-Unique: wsbZyGM5NZ2vPK3xg9DdGA-1
Received: by mail-ed1-f42.google.com with SMTP id o20so38899453eds.10
	for <Blinux-list@redhat.com>; Sun, 05 Dec 2021 23:18:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=LOxmJgLM0fI2yAVVpDo8uHmbu/ErMvTvNKwPKMvOXRM=;
	b=58JnTm3bgVXd6WYTRZ1ge8e8tV0KUUmmseozkJX/nzuMvlmUpmEmFOw5iQDyqcyvKe
	hXlSmjZKAn+7hFfhgwJECPQRY/fvBG2UD3Zb62yTNIdFka1e2Dfqa7hLYuBvf8fBgA5h
	3Px0hxo9G+YEUAKO2HT4rEvciC3zo57zMMpuecrR+Y/4ABQER/0cIv3DEUfEKzqaKYg2
	nvQr7os08SPW5Yy7qALgLjgxKB+AoGIstqAYVsAG+yUlVl1f+m2BQyT024yVKutFsCcv
	YIVVyqE3Pixk1wnx8kNjhCUygUawdBn5KgQzn+RMZ8Iuw4ghpHEwxlDAmVfn3eKqQWbc
	JMfg==
X-Gm-Message-State: AOAM533yydGtdrraJDFv6n8k5egq8QSIGwO7BC/fEpWdMAsQYZBqP4jq
	cpKXqG6CqeVQqxAxRNXwoZ96yEq68R9j8Q==
X-Google-Smtp-Source: ABdhPJwih3gkMcE2xyl1NIl1CzLwZfHHXI7UBOrjAqsX9kqok5RGJUN36H/djeaebJH9qkpGaXgzjg==
X-Received: by 2002:a05:6402:b23:: with SMTP id
	bo3mr51005408edb.366.1638775125220; 
	Sun, 05 Dec 2021 23:18:45 -0800 (PST)
Received: from [192.168.8.130] ([197.184.178.46])
	by smtp.gmail.com with ESMTPSA id
	cy26sm7502492edb.7.2021.12.05.23.18.43 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 23:18:44 -0800 (PST)
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Looking for a cli audio player
Message-ID: <c5973fa8-6790-053c-086a-f6137eb01452@gmail.com>
Date: Mon, 6 Dec 2021 09:18:39 +0200
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I am looking for a cli audio player that can and will do:


1. Play .m3u playlists

2. Is able to save your place in the playlists and continue where you 
left off.


Basically what I'm looking for is something that can play my podcasts 
that I've made in to playlists as follows


$ ls -1v |grep .mp3 > /tmp/1.m3u && mv /tmp/1.m3u .


Such a player would also logically be able to play Audio books.


If anyone can help here, I'd be very appreciative.

-- 
Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

