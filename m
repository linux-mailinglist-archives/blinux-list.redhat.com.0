Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C93824AE47A
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644359694;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uzgQ+x1Gt8DVkKJFA97E5qUI6ABQT6JtwKdgqug9xfE=;
	b=MTkrDq6KvVM21icnCE4R6Ekxes/tGsIBi9IPN2h9m//qanf0sYspFEGBHsHzMjK7G4O+0p
	0kQBCx1Xe0txxdn3nw7RoKlZmdQcxH0KDsL9bPesVqMnwTRTArHio8kqmrw1JGzJ5PpGd8
	ain/4X0xAs6XZeTOAwffroKTvwB1AB8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-493-C3xwf5HEOQu3qrU-ryMzDw-1; Tue, 08 Feb 2022 17:34:51 -0500
X-MC-Unique: C3xwf5HEOQu3qrU-ryMzDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A9E821091DAC;
	Tue,  8 Feb 2022 22:34:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5DD08108AB;
	Tue,  8 Feb 2022 22:34:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5E3F1802FE8;
	Tue,  8 Feb 2022 22:34:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 217InGkw030506 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 7 Feb 2022 13:49:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3B42B112131F; Mon,  7 Feb 2022 18:49:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 373911121318
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 18:49:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF2BE8039D5
	for <blinux-list@redhat.com>; Mon,  7 Feb 2022 18:49:12 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-464-2vw9eaYiNSm3lZu8N6uxMw-1; Mon, 07 Feb 2022 13:49:11 -0500
X-MC-Unique: 2vw9eaYiNSm3lZu8N6uxMw-1
Received: by mail-wr1-f44.google.com with SMTP id s10so23931233wra.5
	for <Blinux-list@redhat.com>; Mon, 07 Feb 2022 10:49:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=5T4sRbSTgudSB8RNkiDKky6537vvzqD5FWnxI9nl8mk=;
	b=Jd9u9wdpGjWQqhi287GwIYZAOTirGKtLmazcw2Lli2hxuf/dAm7zuTUkoU3Bge0Mz4
	hpJMxBL+zKirZVYXgneJEAz4TC98jPnmoo6j/JNPooqKS/VDMBqZt4TSbXjTr+vuuld8
	nLVZiAcABHCBy9dnlTRMkqW3lHyo5NXpRESGWWkVOM174sVOEluQPDLitSfSLq9ji1W4
	UTf0IPAT6IHrz547szJO4Pd56hrw4i8bn/iClKYm1Z15EGIc7QlbinYCl6dNqojoHYUi
	n+emk1rccTpzl8J+1tUxtmxO7PyNeNe8m9l2lxlOe/MjzclbjmjBC5cEl39XM3E8UZMg
	0s0A==
X-Gm-Message-State: AOAM532un4mniT/0NpD12aH2WX/pLpoFi9UtxYwruC717qEXhwRwY4wu
	g/4wv8OBpYftS6i8JlTZ3ZZMwqweMnI=
X-Google-Smtp-Source: ABdhPJxdzQZzXf+zojxHHBVtwKAg1BBFKuxBVJJjAerYcPtB7CF6oq1M1+xc5HHIV7nnxF8ZWModMA==
X-Received: by 2002:adf:d0c9:: with SMTP id z9mr628404wrh.245.1644259749634;
	Mon, 07 Feb 2022 10:49:09 -0800 (PST)
Received: from [192.168.8.130] ([41.216.202.12])
	by smtp.gmail.com with ESMTPSA id
	o10sm11705129wri.19.2022.02.07.10.49.08 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 07 Feb 2022 10:49:09 -0800 (PST)
Message-ID: <291bcc92-8153-06b1-5831-937bb8d7f289@gmail.com>
Date: Mon, 7 Feb 2022 20:49:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Has anyone gotten i3 accessible yet? or is there a better option
	besides ratpoison, which is great, btw
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


The subject encompassed basically all I wanted to know.


I remember a while ago someone built a talking arch installer using the 
ezarch scripts. On their page they listed i3 as an accessible option, 
but I could never get the thing to install on a VM, and at the time I 
wasn't going to break my Windows install to test it. Now, maybe, but I 
cannot for the life of me remember what that project was called.


If anyone got any tiling WM setups, besides ratpoison to work as they 
should, please let me know.


I really love the way ratpoison doesn't slow this machine down at all.

-- 
Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

