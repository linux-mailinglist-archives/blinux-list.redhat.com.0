Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F02442DA9
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 13:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635855382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=quIz2WTkf9pnMFdJsiXE8SBueoWECSm/ncxvjPww+rc=;
	b=YNGHm6xX22yOa0bYsKx47PUVJj6YfM110cw8vmVn+TctyyZ4hDflm7giflMK1bviZ6V3BZ
	/HVmEMSl3/UOe/pL2DOT4fNID3El4T2uUS1YXtltsWZjz1/7jRRwg2eJVPAqnDrh5uqhZ3
	SO5kwH016LZFYJVCPDC3MDTQAjpPXDY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-Q850849vMYuLl_-lpd9CYA-1; Tue, 02 Nov 2021 08:16:18 -0400
X-MC-Unique: Q850849vMYuLl_-lpd9CYA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B179310A8E00;
	Tue,  2 Nov 2021 12:16:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6281A1972D;
	Tue,  2 Nov 2021 12:16:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5131C1806D04;
	Tue,  2 Nov 2021 12:16:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A2CEv3Z008705 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 08:14:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5A282026D64; Tue,  2 Nov 2021 12:14:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B13DE2026D5D
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:14:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9409380015A
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 12:14:52 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-356-aqu4iXVBP5uzGpq-Ls1bIA-1; Tue, 02 Nov 2021 08:14:51 -0400
X-MC-Unique: aqu4iXVBP5uzGpq-Ls1bIA-1
Received: by mail-qk1-f179.google.com with SMTP id p4so1141042qkk.0
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 05:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rxXri1RRX9M+pfXE5dHydlfsh62zPh1gNLTgLV2DBUE=;
	b=KO0kPH6GtQ1IDdVB/QCZvJU/MJPIyOyCM+egMY7Qk0G8g5uKNQVxOfOe2YHPtjRBjf
	1CcTl2gub2QgV6C/zCBRJYz/ki7/OlcWU+ec1BRefc16yXpUX85BByNe/GmeGsPWVtW8
	okmlFFHhE30+JQDIEPclMVfhLRrHIzOjzuJbSN69bMaYTB9Dh3bu7nWHgw9l/tOceeo3
	2hzizr668Qrnm54AKn/kG6ze2olMpAWp+rhg9E+W7voOi6+UKm7F202ka16MUujbTfWi
	wO8+uGcvY0GjpnkaTp4MI+yGiO0Sj19A5ICPkXXNJQk4Dssjl+fxfTm0ZR9UruCjC/w8
	weiw==
X-Gm-Message-State: AOAM5314wOO76TiLO349OWD+pjtI02k2B6pBbcVLecgVmMGoZ3RfU6w0
	JkZlzsA4IyC8SsWEL4dSplEyPutduj4=
X-Google-Smtp-Source: ABdhPJyFfKksgB33ejziyJzAn6mEZqnN4OAyPwWq6BZaHBpfKbhjmSbM3ND5ciCsCjBcBW/XgedG3Q==
X-Received: by 2002:a05:620a:2982:: with SMTP id
	r2mr29192359qkp.425.1635855290367; 
	Tue, 02 Nov 2021 05:14:50 -0700 (PDT)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	q14sm12111951qtl.73.2021.11.02.05.14.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 05:14:50 -0700 (PDT)
Message-ID: <936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
Date: Tue, 2 Nov 2021 08:14:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
In-Reply-To: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
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

IMKgwqDCoCBPSyB0aGlzIGlzIGp1c3Qgb25lIGV4YW1wbGUgeW91IGNpdGUsIGJ1dCB3aGF0IHRo
ZSBoZWxsIGlzIG9iamVjdCAKbmF2aWdhdGlvbj8gV2hhdCB0aGUgaGVsbCBpcyBhbiBvYmplY3Q/
IEkgaGFkIHRvIHRyeSB0aGF0IG9uY2UgYW5kIHdhcyAKbm90aGluZyBidXQgY29uZnVzZWQgYnkg
aXQuIEZsYXQgcmV2aWV3IHdvcmtzLCBhbmQgYWx0aG91Z2ggaXQncyBub3QgCnBlcmZlY3QsIGl0
IGRvZXMgd29yayB3ZWxsIGVub3VnaCBmb3IgbWUgdG8ga25vdyB3aGF0IGlzIGluIGEgd2luZG93
IAp0aGF0IGlzIG5vdCBiZWluZyByZWFkIG91dCBsb3VkIHJpZ2h0IGF3YXksIGFuZCBJIGNhbiBl
aXRoZXIgY2xpY2sgYSAKY29udHJvbCB3aXRoIG1vdXNlIGVtdWxhdGlvbiBvciBldmVuIHJvdXRl
IHRoZSByZWFsIG1vdXNlIHBvaW50ZXIgdG8gaXQgCmFuZCBjbGljayBpdCwgYWdhaW4gd2l0aCBt
b3VzZSBlbXVsYXRpb24sIG9yIEdvZCBmb3JiaWQsIGEgcmVhbCBtb3VzZSwgCm9yIGV2ZW4gYSB0
cmFja2JhbGwgaWYgSSBzbyBkZXNpcmUuIE5vdyB0aGF0J3MgZ29vZCBzdHVmZiByaWdodCB0aGVy
ZS4gCk5vLCBpdCdzIG5vdCBwZXJmZWN0LCBidXQgaXQncyBwcmV0dHkgZGFtbiBnb29kIGZvciB3
aGF0IGl0IGRvZXMsIGFuZCAKaXQncyBjZXJ0YWlubHkgbm90IHNvbWUgY29uZnVzaW5nIGFzIGhl
bGwgb2JqZWN0IHNoaXQuIERvZXMgdGhpcyBOVkRBIApldmVuIGtub3cgd2hhdCBhIGZsYXQgcmV2
aWV3IGlzIG9yIGhvdyB0byBhbGxvdyB5b3UgdG8gbmF2aWdhdGUgYSB3aW5kb3cgCm90aGVyIHRo
YW4gYnkgc29tZSBibGFjayBtYWdpYyB0aGF0IGlzIG9iamVjdHM/CgoKQW5kIGlmIHRoZXkgZGVj
aWRlIHRoZXkgd2FudCB0byB0YWtlIHRoZSB3aG9sZSBzb3VyY2Ugb2YgdGhlIHBhZ2Ugb3V0IG9m
IApteSBicm93c2VyIGFuZCBzdGljayBpdCBpbnRvIHNvbWUgY29uY2VwdCBvZiBhIHZpcnR1YWwg
c2NyZWVuIHJlYWRlciAKYnVmZmVyLCB0aGVuIEknbSBjZXJ0YWlubHkgZG9uZSB3aXRoIGl0IGJl
Zm9yZSBpdCBldmVyIGdldHMgc3RhcnRlZC4gVGhlIAp2aXJ0dWFsIGJ1ZmZlciB3YXMgYW4gdWds
eSBhbmQgZnJhbmtseSBzaGl0dHkgaGFjayB0aGF0IG5ldmVyIHNob3VsZCAKaGF2ZSBiZWVuIGlu
dHJvZHVjZWQgaW50byBhIHNjcmVlbiByZWFkZXIsIGJ1dCBldmVyeSBzY3JlZW4gcmVhZGVyIG92
ZXIgCnRoZXJlIGltcGxlbWVudGVkIGl0IGJlY2F1c2UgdGhpcyBqYXdzIGNyZWFtIG9mIHRoZSBj
cmFwIHlvdSBzcGVhayBvZiAKZGlkIGl0IGZpcnN0LCBzbyBuYXR1cmFsbHkgZXZlcnlib2R5IGhh
ZCB0byBkbyBpdC4gQWdhaW4sIE9yY2EncyBicm93c2VyIAppbXBsZW1lbnRhdGlvbiBpcyBjZXJ0
YWlubHkgbm90IHBlcmZlY3QsIGFuZCBpZiB5b3UgdGhpbmsgeW91IGNhbiAKaW1wcm92ZSB1cG9u
IGl0IG9yIGV2ZW4gcmVpbnZlbnQgaXQgaW4gc3VjaCBhIHdheSB0aGF0IGl0IGFjdHVhbGx5IHdv
cmtzIApiZXR0ZXIsIHRoZW4geW91J3JlIGNlcnRhaW5seSB3ZWxjb21lIHRvIHRyeS4gSnVzdCBz
dG9wIHRyYXNoaW5nIE9yY2EgaW4gCnRoZSBwcm9jZXNzLiBJdCdzIG5vdCBwZXJmZWN0LCBidXQg
aXQncyBjZXJ0YWlubHkgbm90IGEgc3RpbmtpbmcgcGlsZSBvZiAKcG9vLXBvbyBlaXRoZXIuIE5v
dyB0aGF0IEphd3Mgb3ZlciB0aGVyZSwgeWVhaCwgdGhhdCBvbmUncyBhIGRhbW4gCnN0aW5raW5n
IHBpbGUgb2YgcG9vLXBvbywgYW5kIEkgcmVhbGx5IHdpc2ggcGVvcGxlIHdvdWxkIGdldCBpdCBv
dXQgb2YgCnRoZWlyIGhlYWRzIHRvIHNheSB0aGF0IHRoZXkgZG8gc28gbXVjaCByaWdodCB3aGVu
IGFsbCB0aGV5IGRvIGhhcyBiZWVuIAp3cm9uZyBmcm9tIGRheSBvbmUuIFRhYmxlIHdpdGggMyBj
b2x1bW5zIGFuZCAzNyByb3dzIGhhcyBzaG93biB1cCBpbiAKZW1haWxzIHBlb3BsZSBoYXZlIGNv
cGllZCB0byBtZSBtb3JlIHRpbWVzIHRoYW4gSSBjYW4gY291bmQsIGFuZCB5b3UgY2FuIApxdWl0
ZSBlYXNpbHkgZ3Vlc3Mgd2hhdCB0aGV5IHVzZWQgdG8gY29weSB0aGUgdGV4dC4gRnJhbmtseSwg
aXQncyBiZXlvbmQgCmRpc2d1c3RpbmcuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

