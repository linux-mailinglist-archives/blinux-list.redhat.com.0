Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A88A53DC22B
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jul 2021 03:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627693255;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Twel520jQcN9v0Vp7tUN/nqouPH0C/CbZ5On4GrjQkc=;
	b=HnhjWIcbKzyqOYDklHSiKCYDcrzIANYORjuNSyq1RVbyZYUVqhp2m4NE0aY6O7lPEgJmdH
	PSY4snkONxViCc6FuqZLVLlANVTfALj7/evVurZjYVQmrw8bxCHy/LRg5C/764qxeqE+gF
	RD/PhAz5uT1VVyjs+tryGv6IsepU+yQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-190-71JpZspyPSOm-ICmZxjY2g-1; Fri, 30 Jul 2021 21:00:53 -0400
X-MC-Unique: 71JpZspyPSOm-ICmZxjY2g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E830E3639F;
	Sat, 31 Jul 2021 01:00:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC5612706C;
	Sat, 31 Jul 2021 01:00:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF68C4BB7B;
	Sat, 31 Jul 2021 01:00:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16V0th29009425 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Jul 2021 20:55:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C752321202CE; Sat, 31 Jul 2021 00:55:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C308421202CC
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 00:55:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F1938CA949
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 00:55:41 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-2it5-Zm8MAO4tXO69ecLUg-1; Fri, 30 Jul 2021 20:55:39 -0400
X-MC-Unique: 2it5-Zm8MAO4tXO69ecLUg-1
Received: by mail-qk1-f172.google.com with SMTP id f22so11173310qke.10
	for <blinux-list@redhat.com>; Fri, 30 Jul 2021 17:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=MafiD3P8Dt7fbCwT1AaMOet5a872zrigLqkJFGUixm0=;
	b=LBkimsvaaZTQ50EQmzauXf6dryiaCyfG/ddBW7hp1tpz1YHURklp2SPvTbGW78GRZy
	kc+arOD1tXVNKcuHQJmNRcG4uElUf4HkHx+uhhCLhG/6Gl94Ys87rr4V/Pe0mJPFjQSo
	zM+G0IfUus3yVSWNYbAzodFKBnk+oJMykP+nfOb3R80rkamDtWjJfWvPMDmqC8KTwLth
	YRhgbuFm5iLjr+0X/lNoof9+/YtchGbKiNnsP6NPHMeA2lCrLg3IdBt0jM5XYsI8LGOK
	jNlL1tajRPeQjF1LntaSOYLZxRP8JVKGT2ArJM2QBKH8XpGQjxm4aWh9K/WQMya6/I28
	4kjw==
X-Gm-Message-State: AOAM530iIVlSdGQ/CaJcGULi7Y/EywzF6KVrT4+t1CeQ6H0SP5f1Ltoc
	RnBYo9uqFGXbuFdlLcPSSurPlliKk3MSdQ==
X-Google-Smtp-Source: ABdhPJzU5FyyRNLHgxDcXM17Q3oM0S4F0PZPBMuQzs2Mrv5vZp78y7dhoNSnYeW+TrJZ1XLOe6iIMA==
X-Received: by 2002:a05:620a:31a:: with SMTP id
	s26mr5117390qkm.80.1627692938475; 
	Fri, 30 Jul 2021 17:55:38 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::adcc])
	by smtp.gmail.com with ESMTPSA id b15sm1423381qtt.9.2021.07.30.17.55.37
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 30 Jul 2021 17:55:38 -0700 (PDT)
Subject: Re: Solus and Broken Speech
To: blinux-list@redhat.com
References: <6fbf8e0f-bfb0-92ea-8b0b-7e271cb3a4a1@gmail.com>
	<alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
Message-ID: <a329141f-64a6-e2a2-1c8e-b16e5d108cad@gmail.com>
Date: Fri, 30 Jul 2021 20:55:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2107302039530.29234@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlIGlzc3VlIGlzIHdpdGggU29sdXMsIG5vdCBTbGludC7CoCBTbGludCdzIHNwZWVjaCBpcyB3
b3JraW5nIGZpbmUsIAp3aXRoIGNvbnNvbGUgYW5kIGd1aS4KCgoKVGhhbmtzLAoKCgpEYXZlwqAg
SC4KCgoKCk9uIDcvMzAvMjEgODo0MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBEaWQgeW91IHJ1biBzcGQtY29uZiBpbiB1c2VyIGFjY291bnQgZGlyZWN0
b3J5IHlldD8gIElmIG5vdCwgeW91IG1heSB3YW50CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

