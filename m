Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4E3A838C95A
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 16:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621608058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6f/I7SBGZLNIoXN5WsSs7y/xj7nzXWxtL4arBJMEPpc=;
	b=D+6bBx5fHlOXqIPVaO3OkMAvqKPzvhXtz3RVKq8PKn1cYu3J0XVChr08gafxjGRI+QgIat
	sgyHBxRaYWy/em3cWhA+tHeHcZoY04+lgxfQiQfjzE+cMPfK0C5ga49Wg9KrSUonhL7Rwu
	b6ZMKnHukhW1/31i4acRMJsiBZUuPCY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-556-erAKSlJ-PkKwWP61BmmKgQ-1; Fri, 21 May 2021 10:40:56 -0400
X-MC-Unique: erAKSlJ-PkKwWP61BmmKgQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4A6CD801B15;
	Fri, 21 May 2021 14:40:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22D055D6CF;
	Fri, 21 May 2021 14:40:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 440FD44A5A;
	Fri, 21 May 2021 14:40:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LEei36011108 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 10:40:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6081610BFD74; Fri, 21 May 2021 14:40:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CDBD10BFD67
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:40:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6D25800B29
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:40:38 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-147-K6TB8PfYNZqk4AhAnShBlg-1; Fri, 21 May 2021 10:40:35 -0400
X-MC-Unique: K6TB8PfYNZqk4AhAnShBlg-1
Received: by mail-ed1-f48.google.com with SMTP id h16so23579927edr.6
	for <blinux-list@redhat.com>; Fri, 21 May 2021 07:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=tqtxKC5zv7sMJUf/5JPrUwg0Z6c911hqCgQyOs5Lf7o=;
	b=c/UT8ns+muuKGSYQ3B1MV/AW8WOuA9+XCezViYJ1vVB/nZIjOGugZMaJVS64hRLJQR
	UYuqjn5ykWP43AGmB3aKlLdz0OUgeb4mNQ7qQ+5wLDObhxgzbbBJF6Qd+SS11GQ8ruD/
	w4vRernoe1HQXcG0dU8PRIrPqTBrcX6GNk9FFLE/r3hTjeODNTwhOiSlTkzCSoIljyFo
	M+PB22JlGvYWWxK7lPcFc2hMpkWEFDx7N8WfApVXODsFIpP+rtqDTWIZLjf+yOoS0lof
	5zc9EKITDwNfzW43Ad1JpQwtfhuvwW2OgXcq9opkmOiUfLHTj5x19ZYjNQ0VmKItB/1A
	YpBA==
X-Gm-Message-State: AOAM533jfDNcVTKfdQ0KpP7VAuKNhcAAzAm2bL4uquopcSM0+4qIgHiD
	U6iSVrWm0+OQIq2lve4ifFYTLEyzuQ2iQA==
X-Google-Smtp-Source: ABdhPJx3nOS7To9An0kNHJkxqQf/LH4Kht/Lnah2xRV6iByUhlpJnNEzh6mUJXeHTL4whY4fsKtKBA==
X-Received: by 2002:a05:6402:14c2:: with SMTP id
	f2mr11821297edx.69.1621608033413; 
	Fri, 21 May 2021 07:40:33 -0700 (PDT)
Received: from [192.168.1.8] (net-2-44-25-150.cust.vodafonedsl.it.
	[2.44.25.150]) by smtp.gmail.com with ESMTPSA id
	i20sm4154147edr.94.2021.05.21.07.40.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 May 2021 07:40:32 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
	<alpine.NEB.2.23.451.2105211016530.24532@panix1.panix.com>
Message-ID: <3b3d3279-de17-85f4-3212-6d724d5275ee@gmail.com>
Date: Fri, 21 May 2021 16:40:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2105211016530.24532@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKWWVzIEkgaGF2ZSBydW4gU3BkLWNvbmYsIGJ1dCBubyBsdWNrLiB0aGUg
b3V0cHV0IG1vZHVsZSBpcyBzZXQgdG8gZXNwZWFrLW5nLgoKQmVzdCByZWdhcmRzLgoKRnJhbmNp
c2NvCgpPbiA1LzIxLzIxIDQ6MTcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4gSGF2ZSB5b3UgcnVuIHNwZC1jb25mIGFuZCBzZWxlY3RlZCBlc3BlYWstbmcg
YXMgeW91ciBzeW50aGVzaXplciBmb3IKPiBzcGVlY2gtZGlzcGF0Y2hlcj8KPgo+Cj4gT24gRnJp
LCAyMSBNYXkgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pgo+PiBIZWxsbyB0aGVyZSwKPj4KPj4KPj4gcmVtb3ZpbmcgZXNwZWFrIGRvZXNuJ3QgZml4IGl0
LCB0aGUgc2FtZSBwcm9ibGVtIHN0aWxsIHBlcnNpc3RzLgo+Pgo+PiBCZXN0IHJlZ2FyZHMuCj4+
Cj4+IEZyYW5jaXNjby4KPj4KPj4KPj4gT24gNS8yMS8yMSAxMjozNiBQTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhvd2R5Cj4+Pgo+Pj4+IEkgaGF2ZSBl
c3BlYWssIHNveCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLCBwdWxzZWF1
ZGlvLWFsc2EsCj4+Pj4gYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPj4+IGVzcGVhay1uZyBpcyB1
c2VkIGJ5IGRlZmF1bHQgaW5zdGVhZCBvZiBlc3BlYWsuIGVzcGVhay1uZyBpcyB0aGUgc3VjY2Vz
c29yCj4+PiBvZiBlc3BlYWsuIGRvIHRha2UgY2FyZSB0byBub3QgaW5zdGFsbCBlc3BlYWsgYnV0
IGVzcGVhay1uZyBhbmQgZ2l2ZSBhbm90aGVyCj4+PiBzaG90IDopLgo+Pj4KPj4+Cj4+PiBBbSAy
MS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b246Cj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4KPj4+Pgo+Pj4+IEp1c3QgZm9yIHRoZSBoZWNrIG9m
IGl0LCBJIHJlZGlkIGEgY2xlYW4gaW5zdGFsbCBvZiBhcmNoIHdpdGggcHVsc2VhdWRpbwo+Pj4+
IHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBldmVyeXRoaW5nIEkgbmVlZGVkIHJ1bm5pbmcg
dGhlIHNoIHNjcmlwdCB5b3UKPj4+PiBpbmRpY2F0ZWQuCj4+Pj4KPj4+PiBJdCBoYWxmIHdvcmtz
LCBhbmQgaGFsZiBkb2Vzbid0Lgo+Pj4+Cj4+Pj4gV2hhdCBJIG1lYW4gYnkgdGhhdCBpcyB0aGF0
IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUsIGp1c3QgYSBmZXcKPj4+PiBzZWNvbmRzIGFn
byBhbmQgcmFuIGZlbnJpciBhcyBzdWRvZXIsIGl0IHBsYXllZCB0aGUgc291bmQgaWNvbiwgdGhp
bmcgdGhhdAo+Pj4+IHdpdGggcGlwZXdpcmUgZGlkbid0IGhhcHBlbiwgYnV0IGdhdmUgbWUgbm8g
c3BlZWNoIGF0IGFsbC4KPj4+Pgo+Pj4+IEkgaGF2ZSBlc3BlYWssIHNveCwgYW5kIHhjbGlwIGlu
c3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLCBwdWxzZWF1ZGlvLWFsc2EsCj4+Pj4gYWxzYS11dGls
cyBhbmQgcGx1Z2lucy4KPj4+Pgo+Pj4+IEFueSBzdWdnZXN0aW9ucz8KPj4+Pgo+Pj4+IFRoYW5r
cyBhZ2Fpbi4KPj4+Pgo+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pgo+Pj4+IEZyYW5jaXNjby4KPj4+
Pgo+Pj4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4+Pj4gSG93ZHksCj4+Pj4+Cj4+Pj4+IGRvIHlvdSBoYXZlIHRoZSByZXF1
aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNvdW5kIC8gdm9pY2UgZHJpdmVycwo+Pj4+PiBpbnN0
YWxsZWQ/Cj4+Pj4+IFRvIGdldCBzdXJlLCByZWluc3RhbGwgaXQgZXhlY3V0ZToKPj4+Pj4gc3Vk
byBwYWNtYW4gLVMgc294IGVzcGVhay1uZyB4Y2xpcAo+Pj4+Pgo+Pj4+PiBzb3ggaXMgdXNlZCBm
b3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2ljZSBvdXRwdXQgaW4gdGhlIGRlZmF1bHQKPj4+
Pj4gY29uZmlndXJhdGlvbiwgeGNsaXAgaXMgYSBmdW5ueSB0b3kgdG8gbGV0IGZlbnJpciBzaGFy
ZSB0aGUgY2xpcGJvYXJkCj4+Pj4+IGJldHdlZW4geW91ciBHVUkgYW5kIFRlcm1pbmFsLgo+Pj4+
Pgo+Pj4+PiBzdGFydCBmZW5yaXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4g
c3RvcCBpdCB1c2luZyBDVFJMICsgQwo+Pj4+PiBzdWRvIGZlbnJpcgo+Pj4+Pgo+Pj4+PiBkaWQg
eW91IGhlYXIgdGhlIHN0YXJ0dXAgc291bmQ/IGZlbnJpciBwbGF5cyBhIGxpdHRsZSBzb3VuZGlj
b24gYXQKPj4+Pj4gc3RhcnR1cC4KPj4+Pj4KPj4+Pj4gaWYgbm90LCB0aGVuIHB1bHNlYXVkaW8g
aXMgbm90IGNvbmZpZ3VyZWQuCj4+Pj4+IHNob3J0IHN0b3J5IGV4ZWN1dGU6Cj4+Pj4+ICMgY29u
ZmlndXJlIHVzZXIKPj4+Pj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29u
ZmlndXJlX3B1bHNlLnNoCj4+Pj4+ICMgY29uZmlndXJlIHJvb3QKPj4+Pj4gc3VkbyAvdXNyL3No
YXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPj4+Pj4KPj4+
Pj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUgY29uZmlndXJhdGlvbiBmb3IgYm90aCBnZXQg
YWN0aXZlCj4+Pj4+Cj4+Pj4+IHJlc3RhcnQKPj4+Pj4KPj4+Pj4gdGhlbiByZXRyeQo+Pj4+Pgo+
Pj4+PiBzdWRvIGZlbnJpcgo+Pj4+Pgo+Pj4+PiBsb25nIHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5
IGRlZmF1bHQgdG8gcnVuIGFzIHJvb3QgdG8gY29sbGVjdCB0aGUgZGF0YSBvbgo+Pj4+PiB5b3Vy
IHNjcmVlbiBvciBjYXB1dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIG9y
IGNyZWF0ZXMKPj4+Pj4gc291bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlvdSB3b250
IGhlYXIgc291bmQgb2YgYW4gb3RoZXIgdXNlciBieQo+Pj4+PiBwdWxzZWF1ZGlvIChzb3VuZCBz
ZXJ2ZXIpIGRlc2lnbi4gV2UgbmVlZCB0byB0cmFuc3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQKPj4+
Pj4gYXMgcm9vdCB0byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlIHJ1bm5pbmcgYXMgdXNlciB0
byBmaW5hbGx5IGhlYXIgdGhlCj4+Pj4+IHNvdW5kLgo+Pj4+Pgo+Pj4+PiBmZW5yaXIgcHJvdmlk
ZXMgMiBzY3JpcHRzIChzZWUgYWJvdmUpIHRvIGNvbmZpZ3VyZSB0aGUgcm9vdCBwdXNlIGF1ZGlv
IHRvCj4+Pj4+IHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFuZCBjb25maWd1cmUgdXNlciBw
dWxzZSBhdWRpbyB0byBsaXN0ZW4gdG8gdGhlCj4+Pj4+IHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQg
cGxheSBpdC4KPj4+Pj4KPj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IDE4LjA1
LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoK
Pj4+Pj4KPj4+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBUaGFua3Mgc28g
bXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgc29sdmVkIQo+Pj4+Pj4KPj4+
Pj4+IFRoZSBvdGhlciBwYXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0
IGZlbnJpciBkb2Vzbid0Cj4+Pj4+PiBzcGVhayB3aXRoIGVzcGVhaywgb3IgZXNwZWFrLW5nLgo+
Pj4+Pj4KPj4+Pj4+IERvIEkgaGF2ZSB0byBzZXQgc29tZXRoaW5nIHNvbWV3aGVyZSBmb3IgdGhh
dCB0byBoYXBwZW4/Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+Pj4+Pj4KPj4+Pj4+IEJl
c3QgcmVnYXJkcy4KPj4+Pj4+Cj4+Pj4+PiBGcmFuY2lzY28uCj4+Pj4+Pgo+Pj4+Pj4gT24gNS8x
OC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pj4+Pj4+PiBIb3dkeSBGcmFuY2lzY28sCj4+Pj4+Pj4KPj4+Pj4+PiBpIGRvbnQga25vdyB3aHkg
dGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgcHl0aG9uLXB5ZW5jaGFudCBpZgo+
Pj4+Pj4+IHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3MuIE1heWJlIHRoaXMgc2hvdWxkIGJlIHJl
cG9ydGVkIHRvIHRoZSBwYWNrYWdlCj4+Pj4+Pj4gbWFpbnRhaW5lci4gQnV0IGFueXdheS4KPj4+
Pj4+Pgo+Pj4+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2thZ2UgY29udGFpbnMgdGhl
IHNwZWNpZmljIGZpbGUgeW91IG5lZWQgYnkKPj4+Pj4+PiAic3VkbyBwYWNtYW4gLUZ5IGZpbGVu
YW1lIi4gaGVyZSBpIGRpZCB0aGlzIGZvciBmb3IgZXhhbXBsZSBpbgo+Pj4+Pj4+IGxpYnZva2tv
LnNvOgo+Pj4+Pj4+Cj4+Pj4+Pj4gMTA6MTQgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJCBzdWRv
IHBhY21hbiAtRnkgbGlidm9pa2tvLnNvCj4+Pj4+Pj4gW3N1ZG9dIFBhc3N3b3J0IGY/ciBjaHJ5
czoKPj4+Pj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4uCj4+Pj4+Pj4g
IMKgY29yZSA5MDMsNSBLaULCoCA2LDE3IE1pQi9zIDAwOjAwCj4+Pj4+Pj4gWyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyNdCj4+Pj4+Pj4gMTAwJQo+Pj4+Pj4+ICDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1pQi9z
IDAwOjAwCj4+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4+Pj4+Pj4gMTAwJQo+Pj4+Pj4+ICDC
oGNvbW11bml0eSAyMiw4IE1pQsKgIDI5LDYgTWlCL3MgMDA6MDEKPj4+Pj4+PiBbIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjI10KPj4+Pj4+PiAxMDAlCj4+Pj4+Pj4gIMKgbXVsdGlsaWIgMjIyLDUgS2lCwqAgMTIs
OCBNaUIvcyAwMDowMAo+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+Pj4+Pj4+IDEwMCUKPj4+
Pj4+PiBleHRyYS9saWJ2b2lra28gNC4zLjEtMQo+Pj4+Pj4+ICDCoMKgwqAgdXNyL2xpYi9saWJ2
b2lra28uc28KPj4+Pj4+PiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkCj4+Pj4+Pj4K
Pj4+Pj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxpYnZv
aWtrbyIKPj4+Pj4+PiB0byBzaWxlbmNlIG91dCBhbGwgdGhlIHdhcm5pbmdzIGRvIHRoaXM6Cj4+
Pj4+Pj4gc3VkbyBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pj4+Pj4KPj4+
Pj4+PiB0aGlzIGluc3RhbGwgYWxsIDMgKElNTyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQg
c2hvdWxkIG5vdCBjcmVhdGUgYQo+Pj4+Pj4+IHdhcm5pbmcsIGJ1dCB3ZWxsLCBpdCBpcyBsaWtl
IGl0IGlzKQo+Pj4+Pj4+Cj4+Pj4+Pj4gaSB1c2UgaXJzc2kgYXMgSVJDIChjb21tYW5kbGluZSkg
Y2xpZW50LiB0aGVyZSBpcyBhbHNvIFBpZGdpbiAoYXMKPj4+Pj4+PiBncmFwaGljYWwgY2xpZW50
KS4gYm90aCBhcmUgdmVyeSBuaWNlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gbG9va2luZyBmb3J3YXJkIHRv
IHNlZSB5b3UgaW4gSVJDIDopLgo+Pj4+Pj4+Cj4+Pj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Pj4K
Pj4+Pj4+Pgo+Pj4+Pj4+IEFtIDE4LjA1LjIxIHVtIDA4OjU3IHNjaHJpZWIgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IEkgbWFuYWdlZCB0byBpbnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVz
LCBidXQgbm90IHRoZSBvdGhlciB0d28sIHNvCj4+Pj4+Pj4+IHRoYW5rcyBmb3IgdGhhdC4KPj4+
Pj4+Pj4KPj4+Pj4+Pj4gQWxzbywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXksIEkg
anVzdCBpbnN0YWxsZWQgaXQsIEkgZGlkbid0Cj4+Pj4+Pj4+IGtub3cgeWFvdXJ0IHdhcyBkZXBy
ZWNhdGVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBNeSBxdWVzdGlvbiBub3cgaXMsIGFuZCB0aGlzJ2xs
IGJlIGR1bSwgd2hhdCBhcmUgcmVjb21tZW5kZWQgSVJDCj4+Pj4+Pj4+IGNsaWVudHM/IGhvdyBk
byBJIGdldCB0aGVtIHdvcmtpbmc/IHdoYXQgc2hvdWxkIEkga25vdyBiZWZvcmUgam9pbmluZwo+
Pj4+Pj4+PiBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBUaGFua3MgYWdhaW4uCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+
Pj4+Pj4KPj4+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiA1LzE3LzIxIDk6
MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+
PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdlIGludGVuZGVkIHRvIGNo
cnlzIChGZW5yaXIKPj4+Pj4+Pj4+IGF1dGhvcikgb24gdGhlICNhMTF5IGNoYW5uZWwgb2YgaXJj
LmxpbnV4LWExMXkub3JnLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IE1heWJlIGpvaW4gaGltIHRoZXJl
Pwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IERpZGllcgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IExlIDE3LzA1
LzIwMjEgPyAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9jcml0
wqA6Cj4+Pj4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlh
b3VydC4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRo
IHRoZSBjb21tYW5kCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBmZW5yaXIKPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4+IGluIGEgdGVybWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNv
dW5kLCBhbmQgdGhpczoKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gW2ZyYW5jaXNj
b0BCbHVlYmxpbmsgfl0kIGZlbnJpcgo+Pj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJO
SU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOgo+Pj4+Pj4+Pj4+IGxp
YmhzcGVsbC5zby4KPj4+Pj4+Pj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6
IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTog
V0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPj4+Pj4+Pj4+
PiBsaWJ2b2lra28uc28uCj4+Pj4+Pj4+Pj4gMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBm
aWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAw
OCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3IgbG9hZGluZyBwbHVnaW46Cj4+Pj4+
Pj4+Pj4gbGlibnVzcGVsbC5zbwo+Pj4+Pj4+Pj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2Jq
ZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0
aGVyLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gRnJh
bmNpc2NvLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

