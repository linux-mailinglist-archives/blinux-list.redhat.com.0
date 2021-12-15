Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A41947644F
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 22:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639602637;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tWupGRpwOsET4Bqy1uJnbwnyD6t/WepOfoURo5NyEFo=;
	b=jPwxvQoGU6cSEdmEJMRAyQDrnJDSZUXeIaTszO9w5zQi3/lxP0ko+IPzrEn8rHKfXG+lMS
	91vAjTfjR1C+KzNaJJYrNelvIjYJCFVkPbERN+T7Pbb9TLZxHyZGZsbvf5tJUYqIrPap6X
	N1UabtwZpAuNYYvZPYCwNFptLumnJQA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-lxJBjzLjMa2BPceCYyrCZg-1; Wed, 15 Dec 2021 16:10:33 -0500
X-MC-Unique: lxJBjzLjMa2BPceCYyrCZg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C4FA85B665;
	Wed, 15 Dec 2021 21:10:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABFC67A233;
	Wed, 15 Dec 2021 21:10:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0ADB11809CB8;
	Wed, 15 Dec 2021 21:10:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BFL7FJB005278 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Dec 2021 16:07:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E5B5440CFD1D; Wed, 15 Dec 2021 21:07:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0D6640CFD0D
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 21:07:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3272805F46
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 21:07:14 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-590-qaYut9SpPi-PTkAJb9lkoQ-1; Wed, 15 Dec 2021 16:07:12 -0500
X-MC-Unique: qaYut9SpPi-PTkAJb9lkoQ-1
Received: by mail-wm1-f41.google.com with SMTP id y196so17546966wmc.3
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 13:07:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=0BdC46MRjy7oJK4RCSZ3Ss8xBSABZtD6hXG+P8Ohu6M=;
	b=dD8NnzxzZ1Su64CQtndBdFrMvi+5EkQJbfhKw34r2w2Q8Takdtt8G9KoMBDK93Zftw
	sCskgQja8yuKeSc2CXqdO+cA0lkerJhaF9E8tBDrFqRd4ZaoWI54P+KaluJWnxzKlott
	pCEW+s8OsLYJhfF8ndb+IvlKMZEzixefjjD2WtttqptztT1caMzocdusm3Subd5LpdPc
	9ueQSHkUc0/ahv0Iio6vRv3fI6KO07keup04nnITLon67TVONP44qBGa+Nkn17V+Ncoc
	Uh/DEp8eVfBWURUazoHBVG33PIlToVssoBZmGhkYzUAm2ZFrVlBphkkpnsV7LxGm9teA
	htGA==
X-Gm-Message-State: AOAM530YWLnMDKfurRV1SGdRFuj0n1j5HbQZ9VJod63Tdn0KllbSxl4x
	A0PFhqY/JFqeUpOGKxQQDvVTwY3y+TV8Ig==
X-Google-Smtp-Source: ABdhPJyXhc2z3ssNqaaZ2hbbl4Q+Uy24OkX9kwDBEL5VrEIBTZjyyLIEZVD5q1Z+4Cvw2jr7TQbLzg==
X-Received: by 2002:a05:600c:190e:: with SMTP id
	j14mr1883832wmq.75.1639602430674; 
	Wed, 15 Dec 2021 13:07:10 -0800 (PST)
Received: from [192.168.1.130] ([90.251.213.111])
	by smtp.gmail.com with ESMTPSA id
	m34sm6225138wms.25.2021.12.15.13.07.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 15 Dec 2021 13:07:10 -0800 (PST)
Message-ID: <281e7a2d-33ee-a598-d1ee-9a879b4ac899@gmail.com>
Date: Wed, 15 Dec 2021 21:07:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: Attempting a Jenux install, again.
To: blinux-list@redhat.com
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
	<e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
	<06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
	<c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
In-Reply-To: <c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QWhoIGdvb2QgdG8ga25vdyBkZXNrdG9wcyB3b3JrIGZpbmUuIEZvciBtZSBJIGRpZG4ndCBnZXQg
c3BlZWNoIGFmdGVyIAppbnN0YWxsIHdoZW4gc2VsZWN0aW5nIE1hdGUgYnV0IHRoYXQgbWF5IGJl
IGEgVk0gdGhpbmcuCgpCdXQgaWYgaXQgd29ya3MgZmluZSB0aGVuIHRoYXQncyBncmVhdC4gSWYg
d2UgY2FuIGp1cyB0aHJvdyBpbiB0aGUgc3RpY2sgCmFuZCBnZXQgTWF0ZSBvciBHbm9tZSB3b3Jr
aW5nLCBhbGwgdGhlIGJldHRlci4KCk9uIGEgcmVsYXRlZCBub3RlLi4uZGlkIEFyY2ggdXBkYXRl
cyBjcmVlcCBteSBtZW1vcnkgdXNlIHVwPyBJJ20gdXAgdG8gCjIzMC0yNG1iIGZyb20gMjAwLTIx
MCBpbiBSYXRwb2lzb24sIGFuZCBhYm91dCA2MDAtNzAwIG9uIGEgZnJlc2ggTWF0ZSAKc2Vzc2lv
bi4gRmlyZWZveCBzaG9vdHMgdGhhdCB1cCB0byAxLjUtMS42RyBmb3IgbWUgYW5kIHdpdGggdGhl
IDMuOEcgbXkgClZNIGhhcyBJJ20gdHJ5aW5nIHRvIHNhdmUgYXMgbXVjaCBSQU0gYXMgSSBjYW4g
dGhvdWdoCgpPbiAxMi8xNS8yMSAyMDo1NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBIaSwKPgo+Cj4gV29ya2VkIGxpa2UgYSBjaGFtcC7CoCBUaGUgb24sbHkg
dGhpbmcgSSB3YXMgY29uZnVzZWQgYWJvdXQgd2FzIHRoZSAKPiBkaXNrIHNlbGVjdGlvbi7CoCBB
ZnRlciBzZWxlY3RpbmcgdGhlIGZkaXNrIHlvdSBhcmUgc3RpbGwgYXQgZGlzayAKPiBzZWxlY3Rp
b24gc3RlcCB3aGljaCB5b3UgY2FuIGp1c3QgcHJlc3MgZW50ZXIgdG8gY29udGludWUgYXMgdGhl
IGRpc2sgCj4geW91IGNob3NlIGF0IHRoZSBmaXJzdCBwcm9tcGVkIGl0IGlzIGFscmVhZmR5IHNl
bGVjdGVkLCBidXQgdGhpcyBpcyAKPiBub3Qgc3Bva2VuIGJ5IG9yY2EgaG93ZXZlciBqdXN0IGtl
ZXAgdGhpcyBpbiBtaW5kLiBBbHNvLCB0aGUgZGVza3RvcCAKPiBzZWxlY3Rpb24gd2VudCBmaW5l
LsKgIEkgc2VsZWN0ZWQgYWxzYS11dGlscywgZXNwZWFrdXAsIGZpcmVmb3ggYW5kIAo+IHRodW5k
ZXJiaXJkIGFuZCBldmVyeXRoaW5nIGVsc2Ugd2VudCBmaW5lIGF0IGxlYXN0IGluIG15IHZtIHdo
aWNoIGlzIAo+IHVzaW5nIFVFRkkuCj4KPgo+IE1hdHRoZXcKPgo+Cj4KPiBPbiAxMi8xNC8yMDIx
IDc6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IE9u
Y2UgeW91IGJvb3QgdGhlIElTTyB3aXRoIHNwZWVjaCAod2hpY2ggaXMgZG93biBvbmNlIG9uIHRo
ZSBib290IAo+PiBtZW51LCBzbyBqdXN0IGRvd24gYW5kIGVudGVyIHRoZW4gd2FpdCksIGFuZCBp
dCBsb2dzIHlvdSBpbiBhbmQgeW91IAo+PiBnZXQgdGhlIHJvb3RAYXJjaGlzbyBwcm9tcHQganVz
dCB0eXBlIGFyY2hpbnN0YWxsIGFuZCBpdCdsbCBkbyBhIAo+PiBjb25uZWN0aW9uIHRlc3QgdGhl
biBjb21lIHVwIHdpdGggdGhlIGd1aWRlZCBpbnN0YWxsZXIuCj4+Cj4+IDk5JSBvZiBpdCBpcyBp
bnR1aXRpdmUuIEkndmUgbm90IGdvdCBhcm91bmQgdG8gdGVzdGluZyB0aGUgaW5zdGFsbCAKPj4g
b3B0aW9uIGZvciBkZXNrdG9wcy4gSSBwZXJzb25hbGx5IGdvIHdpdGggYSBiYXNlIGluc3RhbCBh
bmQgY3VzdG9taXplIAo+PiBteSBzeXN0ZW0gYXMgbmVlZGVkLCBidXQgWU1NViBvbiB0aGF0IG9u
ZS4gVGhlIG9ubHkgYml0IHRoYXQgdHJpcHBlZCAKPj4gbWUgdXAgd2FzIHRoZSByZWdpb24gc2Vs
ZWN0aW9uIChzZWNvbmQgc3RlcCkgYW5kIHRoZSBkaXNrIHNlbGVjdGlvbiAKPj4gc2luY2UgdGhh
dCBjaGFuZ2VkIHRvIHdoZXJlIHlvdSBzZWxlY3QgeW91ciBkaXNrLCB0aGVuIGRvbid0IHNlbGVj
dCAKPj4gYW55dGhpbmcgdG8gY29udGludWUuIEl0IHdhbGtzIHlvdSB0aHJvdWdoIHRoZSBzdGVw
cyBvbmUgYXQgYSB0aW1lLCAKPj4gYW5kIGlmIHlvdSBrbm93IGhvdyB0byBpbnN0YWxsIEFyY2gg
YWNjZXNzaWJseSwgdGhlIGV4dHJhIHBhY2thZ2VzIAo+PiBzdGVwIGlzIHRoZSBzYW1lIGFzIHBh
Y3N0cmFwLgo+Pgo+PiBGZXcgdGhpbmdzIHRvIG5vdGU6Cj4+Cj4+IDEuIEl0IGF1dG8gZW5hYmxl
cyBlc3BlYWt1cCBpZiBpdCdzIGluc3RhbGxlZCAoSSB1c3VhbGx5IGluc3RhbGwgaXQgCj4+IG91
dCBvZiBoYWJpdCkKPj4KPj4gMi4gSSdtIG5vdCBzdXJlIG9mIHRoZSBrZXlzIHRvIHNodXQgZXNw
ZWFrdXAgb2ZmIGhvd2V2ZXIuLi4KPj4KPj4gQW5kIHRoZSBiaWcsIGJpZyBvbmUuIFRoZSBsYXN0
IEkgY2hlY2tlZCwgTm92ZW1iZXIuIEl0IG9ubHkgd29ya2Qgb24gCj4+IFVFRkkgbWFjaGluZXMg
L2J1dC8gdGhhdCBtaWdodCBoYXZlIGJlZW4gY2hhbmdlZC4gSSBob25lc3RseSBkb24ndCAKPj4g
a25vdyBpZiBpdCdzIHdvcmtpbmcgb24gbGVnYWN5IEJJT1MgbWFjaGluZXMKPj4KPj4gTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhpLAo+Pj4KPj4+Cj4+PiBJ
cyB0aGlzIGd1aWRlZCBpbnN0YWxsZXIgcGFydCBvZiB0aGUgYXJjaCBpc28/wqAgSWYgc28sIGhv
dyBkbyB5b3UgCj4+PiBnZXQgaXQgZ29pbmc/P8KgIEkgd291bGQgbGlrZSB0byBnaXZlIHRoaXMg
YSB0ZXN0IGFuZCBzZWUgaG93IHRoaXMgCj4+PiB3b3Jrcy4KPj4+Cj4+Pgo+Pj4gTWF0dGhldwo+
Pj4KPj4+Cj4+Pgo+Pj4gT24gMTIvMTQvMjAyMSA3OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+IGVsbCB0aGVyZSdzIGEgaGlzdG9yeSBvZiBwb3N0
cyBhcyBmYXIgYXMgSmVudXggYnJlYWtpbmcgd2l0aCBwZW9wbGUgCj4+Pj4gd2F5IG1vcmUgcXVh
bGlmaWVkIHRoYW4gbWUgZGlnZ2luZyB0aHJvdWdoIHRoZSBjb2RlIGFuZCBoYXZpbmcgCj4+Pj4g
dGhpbmdzIGJyZWFrIG9uIHRoZWlyIGluc3RhbGxzLiBJJ3ZlIHBlcnNvbmFsbHkgaGFkIEplbnV4
IGNvcnJ1cHQgYSAKPj4+PiBmbGFzaCBkcml2ZSB0byB0aGUgcG9pbnQgaXQncyBhIGdsb3JpZmll
ZCBwYXByd2VpZ2h0IGR1ZSB0byAKPj4+PiBzaGVuYW5pZ2FucyB3aXRoIHdyaXRpbmcgdG8gaXQu
Cj4+Pj4KPj4+PiBUaGF0IGJlaW5nIHNhaWQuIE5vdyBBcmNoIGl0c2VsZiBoYXMgdGhlIGd1aWRl
ZCBtb2RlIGluc3RhbGxlciwgCj4+Pj4gd2hpY2ggaXMgcGVyZmVjdGx5IHVzZWFibGUgd2l0aCBl
c3BlYWt1cCBhbmQgdGhhdCBvbmNlIGluc3RhbGxlZCwgCj4+Pj4gYXMgb2YgdGhpcyBtb250aCBh
dXRvIGVuYWJsZXMgc3BlZWNoL2JyYWlsbGUgYXQgdGhlIGVuZCBvZiB0aGUgCj4+Pj4gaW5zdGFs
bCwgSSdkIGFyZ3VlIEFyY2ggYXJlIGRvaW5nIGEgYmV0dGVyIGpvYiBhdCBtYWtpbmcgdGhlaXIg
Cj4+Pj4gc3lzdGVtcyBhY2Nlc3NpYmxlKiB0aGFuIHBlb3BsZSBhc3N1bWUgdGhvdWdoLiBJO2Qg
YWxzbyBzYXkgb2theSwgCj4+Pj4gQXJjaCBoYXMgYSBndWlkZWQgaW5zdGFsbGVyIHRoYXQgd29y
a3MqKiBhbmQgaWYgYm9vdGVkIHdpdGggCj4+Pj4gYWNjZXNzaWJpbGl0eSBvbiwga2VlcHMgdGhv
c2Ugc2V0dGluZ3MgYW5kIGdpdmVzIHlvdSBhIHdvcmtpbmcgCj4+Pj4gKGJhc2UsIG1pbmQpIHN5
c3RlbSBvdXQgb2YgdGhlIGJveC4KPj4+Pgo+Pj4+Cj4+Pj4gKiBQcm92aWRlZCB5b3UgaW5zdGFs
bCBhbHNhLXV0aWxzL2VzcGVha3VwIGFzIHBlciBhIG5vcm1hbCAKPj4+PiBhY2Nlc3NpYmlsaXR5
IEFyY2ggaW5zdGFsbC4gVGhlcmUncyBhIHN0ZXAgaW4gdGhlIGd1aWRlZCBpbnN0YWxsZXIgCj4+
Pj4gd2hlcmUgaXQgYXNrcyBmb3IgZXh0cmEgcGFja2FnZXMsIHRoYXQncyB3aGVyZSB5b3UgcGx1
ZyAKPj4+PiBhbHNhLXV0aWxzL2VzcGVha3VwIGluLiBlc3BlYWt1cC5zZXJ2aWNlIGdldHMgYXV0
byBlbmFibGVkIGF0IHRoZSAKPj4+PiBlbmQgb2YgdGhlIGluc3RhbGwgYXMgcGFydCBvZiB0aGUg
aW5zdGFsbGVyCj4+Pj4KPj4+Pgo+Pj4+ICoqIFdvcmtzLCBhcyBsb25nIGFzIHlvdSdyZSBva2F5
IHdpdGggYSBiYXNlIGluc3RhbGwgYnV0IGdldHRpbmcgYSAKPj4+PiBERSB1cCBhbmQgcnVubmlu
ZyBpc24ndCB0aGF0IGJhZCByZWFsbHkgb25jZSB5b3UgZGlkIHRoZSBpbnN0YWxsLiAKPj4+PiBJ
J3ZlIG5vdCBnb3QgdGhlIGRlc2t0b3Agb25lcyB0byB3b3JrIGN1cnJlbnRseSBidXQgc3RpbGwg
cG9raW5nIGF0IAo+Pj4+IGl0LiBJJ20gdGVtcHRlZCB0byBhZGQgaW4gb3JjYS1zcGVlY2gtZGlz
cGF0Y2hlciBhbmQgc28gZm9ydGggaW50byAKPj4+PiB0aGUgZXh0cmEgcGFja2FnZXMgc3RlcC4K
Pj4+Pgo+Pj4+Cj4+Pj4gYXQgdGhhdCBob3dldmVyLgo+Pj4+Cj4+Pj4KPj4+PiBPbiAxMi8xNC8y
MSAxMjo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4g
SGksCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEkgZGlkIHVzZSB0aGUgbGF0ZXN0IGFzIG9mIGFib3V0IDE1
IGhvdXJzIGFnby4gSSBkaWQgYWxzbyB2ZXJpZnkgCj4+Pj4+IHRoZSBpc28uCj4+Pj4+Cj4+Pj4+
Cj4+Pj4+IFRoZSBpc3N1ZSB0aGlzIHRpbWUgaXMgdGhhdCBhZnRlciBydW5uaW5nIHRoZSBpbnN0
YWxsZXIgYW5kIAo+Pj4+PiByZWJvb3RpbmcsIG5vdGhpbmcgc3Bva2UuIHRoZSBzZWVpbmdBSSBv
biB0aGUgaXBob25lIGNvdWxkIHJlYWQgCj4+Pj4+IHRoZSBzY3JlZW4ganVzdCBmaW5lLCBidXQg
SSBjb3VsZG4ndAo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBMYXN0IHRpbWUgaXQgd2FzIG9yY2EgaW4gTWF0
ZSB0aGF0IGRpZG4ndCB3YW50IHRvIGNvbWUgb24sIG5vIAo+Pj4+PiBtYXR0ZXIgd2hhdCBJIGRv
Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBJIGZvdW5kIHRoYXQgd2l0aCBKZW51eCwgbmV2ZXIgZXhwZWN0
IHRoZSBzYW1lIHRoaW5nIHRvIGdvIHdyb25nIAo+Pj4+PiB0d2ljZSwgaG93ZXZlciBzb21ldGhp
bmcgd2lsbCBicmVhay4KPj4+Pj4KPj4+Pj4KPj4+Pj4gV2FybSByZWdhcmRzLAo+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBCcmFuZHQKPj4+Pj4KPj4+Pj4gT24gMjAyMS8xMi8xNCAxNDozMSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+IEplbnV4IGdldHMgcmVndWxh
ciB1cGRhdGVzIGxhdGVzdCBpcyAyMDIxLjExLjE3IHVubGVzcyB0aGF0IAo+Pj4+Pj4gY2hhbmdl
ZCB0b2RheS4KPj4+Pj4+IERpZCB5b3UgdmVyaWZ5IHlvdXIgaXNvIGRvd25sb2FkP8KgIElmIEkg
ZmluZCBhbiAuc2hhNTEyIGZpbGUgZmlsZSAKPj4+Pj4+IGZvciBhbgo+Pj4+Pj4gaXNvLCBJIHdv
bid0IGluc3RhbGwgdGhlIGlzbyB3aXRob3V0IGZpcnN0IHZlcmlmeWluZyBpdCB3aXRoIHRoZSAK
Pj4+Pj4+IC5zaGE1MTIKPj4+Pj4+IGZpbGUuwqAgU28gdHdvIHBvdGVudGlhbCBwcm9ibGVtcyBu
b3QgdXNpbmcgY3VycmVudCBKZW51eCBpbnN0YWxsIAo+Pj4+Pj4gaXNvIG9yCj4+Pj4+PiBmYWls
ZWQgdG8gdmVyaWZ5IGlzby7CoCBJZiB5b3UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxlbXMs
IAo+Pj4+Pj4gcGxlYXNlIHdyaXRlCj4+Pj4+PiBkbmwubmFzaEBnbWFpbC5jb20gYW5kIGxldCBo
aW0ga25vdyB0aGUgcHJvYmxlbSB5b3UgZW5jb3VudGVyZWQgCj4+Pj4+PiBvbiB5b3VyCj4+Pj4+
PiBpbnN0YWxsIGZhaWwuwqAgVGhhdCBvbmUgaXMgdGhlIGRldmVsb3Blci4KPj4+Pj4+Cj4+Pj4+
Pgo+Pj4+Pj4gT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+Pj4+Cj4+Pj4+Pj4gSGksCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+
IEplbnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBnaXZlIGl0IGEgc2tpcCBm
b3Igbm93LCAKPj4+Pj4+PiB0aGF0IGlzIHVubGVzcwo+Pj4+Pj4+IHRoZSBkZXYgYWN0dWFsbHkg
Zml4ZXMgdGhlIHRoaW5nLgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBJIGFtIG9uIEZlZG9yYSwg
Zm9yIG5vdywgYmVjYXVzZSBpdCB3YXMgdGhlIG5lYXJlc3QgVXNiIHN0aWNrIEkgCj4+Pj4+Pj4g
Y291bGQgZ3JhYgo+Pj4+Pj4+IHF1aWNrbHkuCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgbWln
aHQganVzdCBnaXZlIHRoZSB2YW5pbGxhIEFyY2ggSVNPIGFub3RoZXIgZ28uIFdoeSBub3Q/Cj4+
Pj4+Pj4KPj4+Pj4+PiBPbiAyMDIxLzEyLzE0IDEzOjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+PiDCoMKgb3IgTWFuamFybyBBcmNoaXRlY3QuCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IFBlcnNvbmFsbHkuIEkndmUgaGFkIHN1Y2Nlc3Mgd2l0aCB0aGUgdmFu
aWxsYSBBcmNoIElTTyBhbmQgdGhlIAo+Pj4+Pj4+PiBndWlkZWQKPj4+Pj4+Pj4gaW5zdGFsbGVy
ICh0aGUgYXJjaGluc3RhbGwgb25lKSwgSSBqdXN0IHNldCBpdCB0byBib290IHVwIAo+Pj4+Pj4+
PiB0YWxraW5nLCB3ZW50Cj4+Pj4+Pj4+IHRocm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRp
bHMvZXNwZWFrdXAgYW5kIHRoZW4gcHV0Cj4+Pj4+Pj4+IHNwZWVjaC1kaXNwYXRjaGVyL09yY2Ev
dm9pY2VzIGFuZCBhIHdpbmRvdyBtYW5hZ2VyIG9uIG9uY2UgdGhlIAo+Pj4+Pj4+PiBzeXN0ZW0g
d2FzCj4+Pj4+Pj4+IGluc3RhbGxlZC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSmVudXgg
aGFzIG5ldmVyIHJlYWxseSB3b3JrZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRhbCBhdCAK
Pj4+Pj4+Pj4gYWxsLCB3aGVyZWFzCj4+Pj4+Pj4+IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3
b3JraW5nIHJhdGhlciB3ZWxsLCBhbmQgSSBkdW5ubyBpZiAKPj4+Pj4+Pj4gdGhlIEFyY2hpdGVj
dAo+Pj4+Pj4+PiBlZGl0aW9uIGlzIDM2LzY0IGJpdCBvciAzMmJpdCBvbmx5IG9yIDY0Yml0IG9u
bHkuIEFkbWl0dGVkbHksIAo+Pj4+Pj4+PiBJJ3ZlIGdvdCBhCj4+Pj4+Pj4+IDY0Yml0IFVFRkkg
c3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJU28gd29ya3MgZmxhd2xlc3NseSBvbiBpdCAKPj4+Pj4+
Pj4gaG93ZXZlciwgYnV0Cj4+Pj4+Pj4+IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJv
YmFibHkgZG9uJ3Qgd2FudCB0byBoZWFyIGl0IGlmIAo+Pj4+Pj4+PiB5b3UgYXJlIHNldAo+Pj4+
Pj4+PiBvbiB1c2luZyBKZW51eCBob3dldmVyLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAxMi8xNC8y
MSAwOToxOCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+
Pj4+IEhpIGFsbCwKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJIGRlY2lkZWQgdG8gZ2l2ZSBKZW51eCBh
bm90aGVyIGdvLCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3aGF0IAo+Pj4+Pj4+Pj4gSSB0cmllZCwg
SQo+Pj4+Pj4+Pj4gY291bGRuJ3QgZ2V0IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGlu
IHRvIHRoZSBzeXN0ZW0uCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkg
YWR2aWNlPwo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEFsc28sIGlmIHRoaXMgZG9lc24ndCB3b3JrIG91
dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSAKPj4+Pj4+Pj4+IE1hbmphcm8KPj4+Pj4+
Pj4+IGFyY2hpdGVjdCBpbnN0YWxsPyAiTWFuamFybyBUYWxraW5nIiBnb3QgdXBkYXRlZCBhIGxp
dHRsZSAKPj4+Pj4+Pj4+IHdoaWxlIGFnbywgYW5kCj4+Pj4+Pj4+PiBpZiwgYXMgSSBzYWlkLCBK
ZW51eCBkb2Vzbid0IHdvcmsgb3V0LCBJJ2QgbGlrZSB0byBnaXZlIHRoYXQgCj4+Pj4+Pj4+PiBv
bmUgYSBnby4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBUaGFua3Mgc28gbG9uZy4KPj4+Pj4+Pj4+Cj4+
Pj4+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gQnJhbmR0IFN0ZWVua2Ft
cAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29rIEFpcgo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+IENvbnRhY3Q6Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gUGhvbmU6ICsyNyAoMCk2MCA1
MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEVtYWlsOiBi
cmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSAKPj4+Pj4+Pj4+IDxtYWlsdG86YnJhbmR0LnN0ZWVu
a2FtcEBnbWFpbC5jb20+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gVHdpdHRlcjogQGJyYW5kdHN0ZWVu
a2FtcCAKPj4+Pj4+Pj4+IDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4K
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+
Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pj4+Cj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

