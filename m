Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id BA1393C868A
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 17:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626274876;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fMWXMUDBI3uaQanVtTjgnHYSnjyerXXv5oqwK43ca4c=;
	b=hVY5KADCZW6DqyfB8MAgWF3SiYEzHooTqDndgKguZf0y6q9qhaMetjjnsJOV5rSil7Bogn
	A6Msoxt91Lf4BcWBh8rwcS0avO7Dtp1UNUHu6yiGfkjI5DQK/tTjpHqOARMU3KxyDh67dT
	1mVYWiiJm67j8cfUSFJSOOsed71lT/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-jqiuVgYnM0an5jD5N0HfFA-1; Wed, 14 Jul 2021 11:01:14 -0400
X-MC-Unique: jqiuVgYnM0an5jD5N0HfFA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D982BBEE4;
	Wed, 14 Jul 2021 15:01:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 607A21001281;
	Wed, 14 Jul 2021 15:01:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9FE431809CAC;
	Wed, 14 Jul 2021 15:01:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EF124G008443 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 11:01:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BE513F8842; Wed, 14 Jul 2021 15:01:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9867F8858
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 15:00:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5DED81D9FD
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 15:00:59 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-461-6oUibJBHNu2mygYGHvqX1w-1; Wed, 14 Jul 2021 11:00:57 -0400
X-MC-Unique: 6oUibJBHNu2mygYGHvqX1w-1
Received: by mail-lf1-f46.google.com with SMTP id b26so4129696lfo.4
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 08:00:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=GHOvI+ZEwRqKjvW9fZg3uMaG2w0au8t1BM3zEPt20I4=;
	b=h3lr4Lnz8DByfcVnAiwQpa2FRbZh7AnwSr6h5vOU14pBPFnQEZWH6FWAw14T7tjy2I
	bLLTRDEUcSitjKzaOsO+ofMDa0V/1chvck6mVrln9Tmyz0XUKxuJriEcUTulqXwmsVg8
	r6pLzReD8Ww5oKV8LZUPiPQMZqiwy3ufuSSF/pS/RXW49+xt0i+JSZdAiu4l/wL7jrAT
	p6l5My+95Pf09JrpczPQFd/WZc8vA5/jsytfJCW7/W4tg37CKoz1VCF1zScBATIeoCpW
	8e2rO5hWNCcKxS2cTFgn1u82uNO6t+hm+aMhhxd11i5MbeFLpAdePEHZUyUJjU1eP2Q/
	JxWQ==
X-Gm-Message-State: AOAM532vMiDOmRBV+ui3ttk2DcCxkKN1o3hDCJg3gZ/HpL60bLuLm7WB
	ov2Os73o4P+qQxLqPd9K0P1opGqQkPePng==
X-Google-Smtp-Source: ABdhPJxdfRMnW5MmqRA06sWkDd25NAQUn+7o31x/zAUngJWCMIFNXWyRs71G2ADZXDDRc6uuRn5r+Q==
X-Received: by 2002:a05:6512:783:: with SMTP id
	x3mr8187793lfr.560.1626274854337; 
	Wed, 14 Jul 2021 08:00:54 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id m4sm78883ljq.96.2021.07.14.08.00.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 08:00:53 -0700 (PDT)
Subject: Re: Arch Linux post installation issue
To: blinux-list@redhat.com
References: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
Message-ID: <51391d4c-1d47-dc2f-9d9c-591439b6bab4@gmail.com>
Date: Wed, 14 Jul 2021 18:00:52 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MTQuMDcuMjAyMSAxMzozNywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEhpLAo+Cj4gSSBkb24ndCBrbm93LCBpZiBUYWxraW5nIGFyY2ggbWFpbGluZyBs
aXN0IHN0aWxsIHdvcmtzLCBzbyBJIHRyeSB0byAKPiBhc2sgaGVyZS4KPgo+IEkgc3VjY2Vzc2Z1
bGx5IGluc3RhbGxlZCBBcmNoIHdpdCBHbm9tZSwgdXNpbmcgYXJjaGluc3RhbGwgc2NyaXB0LiBB
bGwgCj4gd29ya3MsIGJ1dCB3aGVuIEkgbGF1bmNoIE9yY2EsIEkgZ2V0IGR1bW15LiBJbiBhZGRp
dGlvbmFsIHBhY2thZ2VzLCBJIAo+IHdyb3RlIHRoaXM6Cj4KPiBvcmNhIHNwZWVjaC1kaXNwYXRj
aGVyIGVzcGVhay1uZyBicmx0dHkKPgo+IHNvLCB3aGF0IEkgbWlzc2VkPyBBcmNoaW5zdGFsbCBz
Y3JpcHQgaXMgcGVyZmVjdCBmb3IgQXJjaCBiZWdpbm5lcnMsIAo+IGFsbCB3b3JrcywgYnV0IEkg
bmVlZCB0byBmaW5kLCB3aHkgc3BlZWNoLWRpc3BhdGNoZXIgdXNlcyBkdW1teSBhdCAKPiB0aGlz
IHRpbWUuCj4KeW91IGNhbiB0cnkgdG8gZXhlY3V0ZSBzcGQtY29uZiBzY3JpcHQgYW5kIHNlbGVj
dCBlc3BlYWstbmcgYXMgZGVmYXVsdCAKbW9kdWxlLgoKPiBUaGFua3MsCj4KPiBQYXZlbAo+Ci0t
IAoKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

