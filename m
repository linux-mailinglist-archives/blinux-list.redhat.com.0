Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F53450995
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 17:27:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636993621;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ee/iJ09U2ER6nOu9LF+vHquMMZ0ajZNqg2RixNWI8nw=;
	b=YIJ0nY7zydJVgq5znzsm/Ksj2E+rFPusFl7FEWCfyI4n83HY9r13pLe5+3qYEe8rxlMuNx
	id9S/ACXngW2UpcpMhEtyISBW/CsXy9SQStBcP+pSlJCuIXgzxzJP6aI2BuCeGVes6km4q
	W5W+1BNoaq2rX5d/1Mhg5Ef9DqO/ZcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-262-7TwD4ynUMj6yvpH0Y0aPjw-1; Mon, 15 Nov 2021 11:26:57 -0500
X-MC-Unique: 7TwD4ynUMj6yvpH0Y0aPjw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 597AFBE068;
	Mon, 15 Nov 2021 16:26:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0D5A01815D;
	Mon, 15 Nov 2021 16:26:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 064FB1806D03;
	Mon, 15 Nov 2021 16:26:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFGN7rx028204 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 11:23:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 415362026D11; Mon, 15 Nov 2021 16:23:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3CCC42026D46
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:23:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29E9785A5BA
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 16:23:04 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-550-xLvmYSUNNk-4Y9NQ8hzgpQ-1; Mon, 15 Nov 2021 11:23:02 -0500
X-MC-Unique: xLvmYSUNNk-4Y9NQ8hzgpQ-1
Received: by mail-qk1-f175.google.com with SMTP id p4so9026939qkm.7
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 08:23:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=57sAn4ixplZUrZUpVjYhJnV7DzoagxJ1QvtnETEnpD8=;
	b=pvsRo/kjZKkRANhNmKDdNfBd0JAnIFiIZbGfbWRRDyoLA9NpGRWCBl+tY+9QdV1aPR
	HimG65ecF3akOlujUtOhOV5OC+NNGQHUx4ryPpendkFeL+tSgWnQXP3Lm1ATQZZ9U+Xe
	whLJXJ598n+2M2AmUUrN3E4QXbsp3znq0LRgkXfMHkwko1VH+zmQ8feQ+7QJHa00kKPm
	nTbnns5x6EeWLoDDKe9OF6I7jDe4eXrwRZM227zMG+Gj/tlMqIr23y1stNpItk8EXGQD
	8cYZb4KDncYMo3YcKJcZNaXkOVwU8ga83b6eZPSRTXS1e1GQ2HuBPNVrbIhubGUumRfv
	2wHw==
X-Gm-Message-State: AOAM533D+5aUFelNVX+qNnzHMAnv6FseHQZkFzftl/a9nWWMZdBKFpaa
	v6IE6pYGuDjwFhLooBiUt81GpyxVyV4=
X-Google-Smtp-Source: ABdhPJwnvk74FAfv+EIgpAtWh2MWxyNfVWkF7ThoOsq1KXOHiebtUTB++kjrhGOnZSzPqG1bMuG/sA==
X-Received: by 2002:a05:620a:4d0:: with SMTP id
	16mr187867qks.326.1636993381796; 
	Mon, 15 Nov 2021 08:23:01 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	a24sm7442833qtp.95.2021.11.15.08.23.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 08:23:01 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<2e84caa3-a3ce-d38b-b2e7-10d1d1b495bb@gmail.com>
	<alpine.NEB.2.23.451.2111150036130.24447@panix1.panix.com>
	<e7972124-81a0-c317-6b97-5ae6dd1fcce3@gmail.com>
	<8328bea3-a6d8-12ef-210b-5cbc9f46b849@gmail.com>
	<b3442e6d-d81f-d141-3f93-dcc77665e9aa@gmail.com>
Message-ID: <7850cc84-ecb3-231a-27c0-e62221acdb26@gmail.com>
Date: Mon, 15 Nov 2021 11:23:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <b3442e6d-d81f-d141-3f93-dcc77665e9aa@gmail.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Try removing its configuration profile from a terminal.
rm -R ~/mozilla/seamonkey
should do it. Then run seamonkey mail again and you should be able to see the 
regular welcome screen. Just be sure to run seamonkey mail rather than seamonkey 
web browser, or if you have only one seamonkey entry, you may want to explicitly run
seamonkey --mail
from your run window. That on its own may work without removing your 
configuration folder, but there is no harm in removing it.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

