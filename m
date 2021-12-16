Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DA40E477E31
	for <lists+blinux-list@lfdr.de>; Thu, 16 Dec 2021 22:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639688861;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AkhOrdtrmtfOhWDo+jG8HNc1zgvOm5Wvz3ijIFROsKQ=;
	b=QQjx5Rw58fbTC/z7TBtFRYWF0Irg3dctw9w+CuWjCF0Uga1cSxiA/pgdFIHLRP2kaSTTNa
	FVXnctq0KDD69/McIVfRipCD8If4+AY5z0e0i9RuMpVrTTL0Qbg8dPsFal7CddJAU0JCmH
	W8Bp6X3lFtU81N04RFzakqKMAzhdbjo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-201-RVMj5nOfMRS5ZH3knOUvow-1; Thu, 16 Dec 2021 16:07:38 -0500
X-MC-Unique: RVMj5nOfMRS5ZH3knOUvow-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AD4A10144E2;
	Thu, 16 Dec 2021 21:07:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 461877AB71;
	Thu, 16 Dec 2021 21:07:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FF594BB7C;
	Thu, 16 Dec 2021 21:07:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BGL7B3g005307 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Dec 2021 16:07:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 78D93141DEE1; Thu, 16 Dec 2021 21:07:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7454C141DEE3
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 21:07:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55A98185A79C
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 21:07:11 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-455-Ma4TxJuzPUq9H57PmxPEiQ-1; Thu, 16 Dec 2021 16:07:09 -0500
X-MC-Unique: Ma4TxJuzPUq9H57PmxPEiQ-1
Received: by mail-qt1-f177.google.com with SMTP id l8so583780qtk.6
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 13:07:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=JSJFtlp9FTg+gBT+xMVCwfA5flEA1vkVDH8GRkZwRpE=;
	b=o3Xx+7Jxo3OSrSGHXago50XcuWKSGN6g34SlOOC33Yj1gD2iGehVz6E7pGHv0XRHrr
	awEcMQxxellBB2F8grPIi0zmiSLFLj2h4hqPUn26xWWMGgiAAG4O5bPpLzZce3LJXi5w
	Vo9LU7MBUp5K4QRGLECHi/qoHZsbUuhOeLq054g0uZ1TRgMcS6p+3ssDpC2kQKbj9G3V
	B88/YgQHvWo/fWWwdvR9U9rWwOl2aVVffGZqZ4o5r1rAbEd6ad5/AmBaL7qdczKlGl6V
	0fN/diaeAMhnbacfipxofxUt4dDG32qGvQrz2CQKI9ElONhUXAHcAzzTk961LYqQ77W2
	OHvA==
X-Gm-Message-State: AOAM533oBIr+mARfD2ZZ2PDY0vrJO8he/RzPH/tKoN6nryl+7J3rIqWf
	flXQBcDLLZm76L5CaJ1X+saGfKvWwPxLFA==
X-Google-Smtp-Source: ABdhPJzXhGS7yMFNDCJ0Mu8BDfUTjvGTc1LJ58QbGoirEWFlXL5uQ9+9eh4Sgfpt/gpkTcpF4T6tPg==
X-Received: by 2002:ac8:5f93:: with SMTP id j19mr18971926qta.596.1639688827738;
	Thu, 16 Dec 2021 13:07:07 -0800 (PST)
Received: from [192.168.91.141] (cpe-65-24-122-135.columbus.res.rr.com.
	[65.24.122.135]) by smtp.gmail.com with ESMTPSA id
	u27sm5381062qtc.58.2021.12.16.13.07.07 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 16 Dec 2021 13:07:07 -0800 (PST)
Message-ID: <5c123171-522c-9790-6023-abef1314818d@gmail.com>
Date: Thu, 16 Dec 2021 16:07:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
	<e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
	<06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
	<c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
	<d740e72d-1f17-b550-1847-912efec0202b@gmail.com>
In-Reply-To: <d740e72d-1f17-b550-1847-912efec0202b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

R25vbWUgaXMgd2hhdCBJSUkgaGF2ZSBub3cuwqAgSSBoYXZlIG5vdCB0cmlpZWQgbWF0ZSBvciBh
bnlvdGhlciBvbmVzLgoKCk1hdHRoZXcKCgoKT24gMTIvMTUvMjEgNjo1MCBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBXaGljaCBkZXNrdG9wIGRpZCB5b3Ug
cGljaz8gSSdtIHRlbXB0ZWQgdG8gd2lwZSBteSBWTSBkaXNrIGFuZCB0cnkgYSAKPiBkZXNrdG9w
IGF0IHNvbWUgcG9pbiwgYnV0IG5vdCBzdXJlIHdoaWNoIG9uZS9ob3cgbWFueSB3b3JrCj4KPiBP
biAxMi8xNS8yMSAyMDo1NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4gSGksCj4+Cj4+Cj4+IFdvcmtlZCBsaWtlIGEgY2hhbXAuwqAgVGhlIG9uLGx5IHRoaW5n
IEkgd2FzIGNvbmZ1c2VkIGFib3V0IHdhcyB0aGUgCj4+IGRpc2sgc2VsZWN0aW9uLsKgIEFmdGVy
IHNlbGVjdGluZyB0aGUgZmRpc2sgeW91IGFyZSBzdGlsbCBhdCBkaXNrIAo+PiBzZWxlY3Rpb24g
c3RlcCB3aGljaCB5b3UgY2FuIGp1c3QgcHJlc3MgZW50ZXIgdG8gY29udGludWUgYXMgdGhlIGRp
c2sgCj4+IHlvdSBjaG9zZSBhdCB0aGUgZmlyc3QgcHJvbXBlZCBpdCBpcyBhbHJlYWZkeSBzZWxl
Y3RlZCwgYnV0IHRoaXMgaXMgCj4+IG5vdCBzcG9rZW4gYnkgb3JjYSBob3dldmVyIGp1c3Qga2Vl
cCB0aGlzIGluIG1pbmQuIEFsc28sIHRoZSBkZXNrdG9wIAo+PiBzZWxlY3Rpb24gd2VudCBmaW5l
LsKgIEkgc2VsZWN0ZWQgYWxzYS11dGlscywgZXNwZWFrdXAsIGZpcmVmb3ggYW5kIAo+PiB0aHVu
ZGVyYmlyZCBhbmQgZXZlcnl0aGluZyBlbHNlIHdlbnQgZmluZSBhdCBsZWFzdCBpbiBteSB2bSB3
aGljaCBpcyAKPj4gdXNpbmcgVUVGSS4KPj4KPj4KPj4gTWF0dGhldwo+Pgo+Pgo+Pgo+PiBPbiAx
Mi8xNC8yMDIxIDc6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+PiBPbmNlIHlvdSBib290IHRoZSBJU08gd2l0aCBzcGVlY2ggKHdoaWNoIGlzIGRvd24g
b25jZSBvbiB0aGUgYm9vdCAKPj4+IG1lbnUsIHNvIGp1c3QgZG93biBhbmQgZW50ZXIgdGhlbiB3
YWl0KSwgYW5kIGl0IGxvZ3MgeW91IGluIGFuZCB5b3UgCj4+PiBnZXQgdGhlIHJvb3RAYXJjaGlz
byBwcm9tcHQganVzdCB0eXBlIGFyY2hpbnN0YWxsIGFuZCBpdCdsbCBkbyBhIAo+Pj4gY29ubmVj
dGlvbiB0ZXN0IHRoZW4gY29tZSB1cCB3aXRoIHRoZSBndWlkZWQgaW5zdGFsbGVyLgo+Pj4KPj4+
IDk5JSBvZiBpdCBpcyBpbnR1aXRpdmUuIEkndmUgbm90IGdvdCBhcm91bmQgdG8gdGVzdGluZyB0
aGUgaW5zdGFsbCAKPj4+IG9wdGlvbiBmb3IgZGVza3RvcHMuIEkgcGVyc29uYWxseSBnbyB3aXRo
IGEgYmFzZSBpbnN0YWwgYW5kIAo+Pj4gY3VzdG9taXplIG15IHN5c3RlbSBhcyBuZWVkZWQsIGJ1
dCBZTU1WIG9uIHRoYXQgb25lLiBUaGUgb25seSBiaXQgCj4+PiB0aGF0IHRyaXBwZWQgbWUgdXAg
d2FzIHRoZSByZWdpb24gc2VsZWN0aW9uIChzZWNvbmQgc3RlcCkgYW5kIHRoZSAKPj4+IGRpc2sg
c2VsZWN0aW9uIHNpbmNlIHRoYXQgY2hhbmdlZCB0byB3aGVyZSB5b3Ugc2VsZWN0IHlvdXIgZGlz
aywgCj4+PiB0aGVuIGRvbid0IHNlbGVjdCBhbnl0aGluZyB0byBjb250aW51ZS4gSXQgd2Fsa3Mg
eW91IHRocm91Z2ggdGhlIAo+Pj4gc3RlcHMgb25lIGF0IGEgdGltZSwgYW5kIGlmIHlvdSBrbm93
IGhvdyB0byBpbnN0YWxsIEFyY2ggYWNjZXNzaWJseSwgCj4+PiB0aGUgZXh0cmEgcGFja2FnZXMg
c3RlcCBpcyB0aGUgc2FtZSBhcyBwYWNzdHJhcC4KPj4+Cj4+PiBGZXcgdGhpbmdzIHRvIG5vdGU6
Cj4+Pgo+Pj4gMS4gSXQgYXV0byBlbmFibGVzIGVzcGVha3VwIGlmIGl0J3MgaW5zdGFsbGVkIChJ
IHVzdWFsbHkgaW5zdGFsbCBpdCAKPj4+IG91dCBvZiBoYWJpdCkKPj4+Cj4+PiAyLiBJJ20gbm90
IHN1cmUgb2YgdGhlIGtleXMgdG8gc2h1dCBlc3BlYWt1cCBvZmYgaG93ZXZlci4uLgo+Pj4KPj4+
IEFuZCB0aGUgYmlnLCBiaWcgb25lLiBUaGUgbGFzdCBJIGNoZWNrZWQsIE5vdmVtYmVyLiBJdCBv
bmx5IHdvcmtkIG9uIAo+Pj4gVUVGSSBtYWNoaW5lcyAvYnV0LyB0aGF0IG1pZ2h0IGhhdmUgYmVl
biBjaGFuZ2VkLiBJIGhvbmVzdGx5IGRvbid0IAo+Pj4ga25vdyBpZiBpdCdzIHdvcmtpbmcgb24g
bGVnYWN5IEJJT1MgbWFjaGluZXMKPj4+Cj4+PiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+IEhpLAo+Pj4+Cj4+Pj4KPj4+PiBJcyB0aGlzIGd1aWRlZCBpbnN0
YWxsZXIgcGFydCBvZiB0aGUgYXJjaCBpc28/wqAgSWYgc28sIGhvdyBkbyB5b3UgCj4+Pj4gZ2V0
IGl0IGdvaW5nPz/CoCBJIHdvdWxkIGxpa2UgdG8gZ2l2ZSB0aGlzIGEgdGVzdCBhbmQgc2VlIGhv
dyB0aGlzIAo+Pj4+IHdvcmtzLgo+Pj4+Cj4+Pj4KPj4+PiBNYXR0aGV3Cj4+Pj4KPj4+Pgo+Pj4+
Cj4+Pj4gT24gMTIvMTQvMjAyMSA3OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+Pj4+PiBlbGwgdGhlcmUncyBhIGhpc3Rvcnkgb2YgcG9zdHMgYXMgZmFy
IGFzIEplbnV4IGJyZWFraW5nIHdpdGggCj4+Pj4+IHBlb3BsZSB3YXkgbW9yZSBxdWFsaWZpZWQg
dGhhbiBtZSBkaWdnaW5nIHRocm91Z2ggdGhlIGNvZGUgYW5kIAo+Pj4+PiBoYXZpbmcgdGhpbmdz
IGJyZWFrIG9uIHRoZWlyIGluc3RhbGxzLiBJJ3ZlIHBlcnNvbmFsbHkgaGFkIEplbnV4IAo+Pj4+
PiBjb3JydXB0IGEgZmxhc2ggZHJpdmUgdG8gdGhlIHBvaW50IGl0J3MgYSBnbG9yaWZpZWQgcGFw
cndlaWdodCBkdWUgCj4+Pj4+IHRvIHNoZW5hbmlnYW5zIHdpdGggd3JpdGluZyB0byBpdC4KPj4+
Pj4KPj4+Pj4gVGhhdCBiZWluZyBzYWlkLiBOb3cgQXJjaCBpdHNlbGYgaGFzIHRoZSBndWlkZWQg
bW9kZSBpbnN0YWxsZXIsIAo+Pj4+PiB3aGljaCBpcyBwZXJmZWN0bHkgdXNlYWJsZSB3aXRoIGVz
cGVha3VwIGFuZCB0aGF0IG9uY2UgaW5zdGFsbGVkLCAKPj4+Pj4gYXMgb2YgdGhpcyBtb250aCBh
dXRvIGVuYWJsZXMgc3BlZWNoL2JyYWlsbGUgYXQgdGhlIGVuZCBvZiB0aGUgCj4+Pj4+IGluc3Rh
bGwsIEknZCBhcmd1ZSBBcmNoIGFyZSBkb2luZyBhIGJldHRlciBqb2IgYXQgbWFraW5nIHRoZWly
IAo+Pj4+PiBzeXN0ZW1zIGFjY2Vzc2libGUqIHRoYW4gcGVvcGxlIGFzc3VtZSB0aG91Z2guIEk7
ZCBhbHNvIHNheSBva2F5LCAKPj4+Pj4gQXJjaCBoYXMgYSBndWlkZWQgaW5zdGFsbGVyIHRoYXQg
d29ya3MqKiBhbmQgaWYgYm9vdGVkIHdpdGggCj4+Pj4+IGFjY2Vzc2liaWxpdHkgb24sIGtlZXBz
IHRob3NlIHNldHRpbmdzIGFuZCBnaXZlcyB5b3UgYSB3b3JraW5nIAo+Pj4+PiAoYmFzZSwgbWlu
ZCkgc3lzdGVtIG91dCBvZiB0aGUgYm94Lgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiAqIFByb3ZpZGVkIHlv
dSBpbnN0YWxsIGFsc2EtdXRpbHMvZXNwZWFrdXAgYXMgcGVyIGEgbm9ybWFsIAo+Pj4+PiBhY2Nl
c3NpYmlsaXR5IEFyY2ggaW5zdGFsbC4gVGhlcmUncyBhIHN0ZXAgaW4gdGhlIGd1aWRlZCBpbnN0
YWxsZXIgCj4+Pj4+IHdoZXJlIGl0IGFza3MgZm9yIGV4dHJhIHBhY2thZ2VzLCB0aGF0J3Mgd2hl
cmUgeW91IHBsdWcgCj4+Pj4+IGFsc2EtdXRpbHMvZXNwZWFrdXAgaW4uIGVzcGVha3VwLnNlcnZp
Y2UgZ2V0cyBhdXRvIGVuYWJsZWQgYXQgdGhlIAo+Pj4+PiBlbmQgb2YgdGhlIGluc3RhbGwgYXMg
cGFydCBvZiB0aGUgaW5zdGFsbGVyCj4+Pj4+Cj4+Pj4+Cj4+Pj4+ICoqIFdvcmtzLCBhcyBsb25n
IGFzIHlvdSdyZSBva2F5IHdpdGggYSBiYXNlIGluc3RhbGwgYnV0IGdldHRpbmcgYSAKPj4+Pj4g
REUgdXAgYW5kIHJ1bm5pbmcgaXNuJ3QgdGhhdCBiYWQgcmVhbGx5IG9uY2UgeW91IGRpZCB0aGUg
aW5zdGFsbC4gCj4+Pj4+IEkndmUgbm90IGdvdCB0aGUgZGVza3RvcCBvbmVzIHRvIHdvcmsgY3Vy
cmVudGx5IGJ1dCBzdGlsbCBwb2tpbmcgCj4+Pj4+IGF0IGl0LiBJJ20gdGVtcHRlZCB0byBhZGQg
aW4gb3JjYS1zcGVlY2gtZGlzcGF0Y2hlciBhbmQgc28gZm9ydGggCj4+Pj4+IGludG8gdGhlIGV4
dHJhIHBhY2thZ2VzIHN0ZXAuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IGF0IHRoYXQgaG93ZXZlci4KPj4+
Pj4KPj4+Pj4KPj4+Pj4gT24gMTIvMTQvMjEgMTI6NDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+PiBIaSwKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gSSBkaWQg
dXNlIHRoZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91cnMgYWdvLiBJIGRpZCBhbHNvIHZlcmlm
eSAKPj4+Pj4+IHRoZSBpc28uCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFRoZSBpc3N1ZSB0aGlzIHRp
bWUgaXMgdGhhdCBhZnRlciBydW5uaW5nIHRoZSBpbnN0YWxsZXIgYW5kIAo+Pj4+Pj4gcmVib290
aW5nLCBub3RoaW5nIHNwb2tlLiB0aGUgc2VlaW5nQUkgb24gdGhlIGlwaG9uZSBjb3VsZCByZWFk
IAo+Pj4+Pj4gdGhlIHNjcmVlbiBqdXN0IGZpbmUsIGJ1dCBJIGNvdWxkbid0Cj4+Pj4+Pgo+Pj4+
Pj4KPj4+Pj4+IExhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBNYXRlIHRoYXQgZGlkbid0IHdhbnQg
dG8gY29tZSBvbiwgbm8gCj4+Pj4+PiBtYXR0ZXIgd2hhdCBJIGRvLgo+Pj4+Pj4KPj4+Pj4+Cj4+
Pj4+PiBJIGZvdW5kIHRoYXQgd2l0aCBKZW51eCwgbmV2ZXIgZXhwZWN0IHRoZSBzYW1lIHRoaW5n
IHRvIGdvIHdyb25nIAo+Pj4+Pj4gdHdpY2UsIGhvd2V2ZXIgc29tZXRoaW5nIHdpbGwgYnJlYWsu
Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4g
QnJhbmR0Cj4+Pj4+Pgo+Pj4+Pj4gT24gMjAyMS8xMi8xNCAxNDozMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+PiBKZW51eCBnZXRzIHJlZ3VsYXIgdXBk
YXRlcyBsYXRlc3QgaXMgMjAyMS4xMS4xNyB1bmxlc3MgdGhhdCAKPj4+Pj4+PiBjaGFuZ2VkIHRv
ZGF5Lgo+Pj4+Pj4+IERpZCB5b3UgdmVyaWZ5IHlvdXIgaXNvIGRvd25sb2FkP8KgIElmIEkgZmlu
ZCBhbiAuc2hhNTEyIGZpbGUgCj4+Pj4+Pj4gZmlsZSBmb3IgYW4KPj4+Pj4+PiBpc28sIEkgd29u
J3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdpdGggdGhlIAo+
Pj4+Pj4+IC5zaGE1MTIKPj4+Pj4+PiBmaWxlLsKgIFNvIHR3byBwb3RlbnRpYWwgcHJvYmxlbXMg
bm90IHVzaW5nIGN1cnJlbnQgSmVudXggaW5zdGFsbCAKPj4+Pj4+PiBpc28gb3IKPj4+Pj4+PiBm
YWlsZWQgdG8gdmVyaWZ5IGlzby7CoCBJZiB5b3UgZG9uJ3QgaGF2ZSB0aG9zZSB0d28gcHJvYmxl
bXMsIAo+Pj4+Pj4+IHBsZWFzZSB3cml0ZQo+Pj4+Pj4+IGRubC5uYXNoQGdtYWlsLmNvbSBhbmQg
bGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCAKPj4+Pj4+PiBvbiB5b3Vy
Cj4+Pj4+Pj4gaW5zdGFsbCBmYWlsLsKgIFRoYXQgb25lIGlzIHRoZSBkZXZlbG9wZXIuCj4+Pj4+
Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IE9uIFR1ZSwgMTQgRGVjIDIwMjEsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+Pj4gSGksCj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Cj4+Pj4+Pj4+IEplbnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBn
aXZlIGl0IGEgc2tpcCBmb3Igbm93LCAKPj4+Pj4+Pj4gdGhhdCBpcyB1bmxlc3MKPj4+Pj4+Pj4g
dGhlIGRldiBhY3R1YWxseSBmaXhlcyB0aGUgdGhpbmcuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEkgYW0gb24gRmVkb3JhLCBmb3Igbm93LCBiZWNhdXNlIGl0IHdhcyB0aGUgbmVhcmVzdCBV
c2Igc3RpY2sgSSAKPj4+Pj4+Pj4gY291bGQgZ3JhYgo+Pj4+Pj4+PiBxdWlja2x5Lgo+Pj4+Pj4+
Pgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIG1pZ2h0IGp1c3QgZ2l2ZSB0aGUgdmFuaWxsYSBBcmNoIElT
TyBhbm90aGVyIGdvLiBXaHkgbm90Pwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAyMDIxLzEyLzE0IDEz
OjA1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4g
wqDCoG9yIE1hbmphcm8gQXJjaGl0ZWN0Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFBlcnNvbmFsbHku
IEkndmUgaGFkIHN1Y2Nlc3Mgd2l0aCB0aGUgdmFuaWxsYSBBcmNoIElTTyBhbmQgdGhlIAo+Pj4+
Pj4+Pj4gZ3VpZGVkCj4+Pj4+Pj4+PiBpbnN0YWxsZXIgKHRoZSBhcmNoaW5zdGFsbCBvbmUpLCBJ
IGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgCj4+Pj4+Pj4+PiB0YWxraW5nLCB3ZW50Cj4+Pj4+Pj4+
PiB0aHJvdWdoIGl0IGFuZCBhZGRlZCBpbiBhbHNhLXV0aWxzL2VzcGVha3VwIGFuZCB0aGVuIHB1
dAo+Pj4+Pj4+Pj4gc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEgd2luZG93IG1h
bmFnZXIgb24gb25jZSB0aGUgCj4+Pj4+Pj4+PiBzeXN0ZW0gd2FzCj4+Pj4+Pj4+PiBpbnN0YWxs
ZWQuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEplbnV4IGhhcyBuZXZlciByZWFsbHkg
d29ya2VkIGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQgCj4+Pj4+Pj4+PiBhbGwsIHdo
ZXJlYXMKPj4+Pj4+Pj4+IHRoZSBvZmZpY2lhbCBhcmNoIElTTyBpcyB3b3JraW5nIHJhdGhlciB3
ZWxsLCBhbmQgSSBkdW5ubyBpZiAKPj4+Pj4+Pj4+IHRoZSBBcmNoaXRlY3QKPj4+Pj4+Pj4+IGVk
aXRpb24gaXMgMzYvNjQgYml0IG9yIDMyYml0IG9ubHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRs
eSwgCj4+Pj4+Pj4+PiBJJ3ZlIGdvdCBhCj4+Pj4+Pj4+PiA2NGJpdCBVRUZJIHN5c3RlbSBzbyB0
aGUgb2ZmaWNpYWwgSVNvIHdvcmtzIGZsYXdsZXNzbHkgb24gaXQgCj4+Pj4+Pj4+PiBob3dldmVy
LCBidXQKPj4+Pj4+Pj4+IFlNTVYgb24gdGhhdCBvbmVZZXMsIGJ1dCB5b3UgcHJvYmFibHkgZG9u
J3Qgd2FudCB0byBoZWFyIGl0IGlmIAo+Pj4+Pj4+Pj4geW91IGFyZSBzZXQKPj4+Pj4+Pj4+IG9u
IHVzaW5nIEplbnV4IGhvd2V2ZXIuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gT24gMTIvMTQvMjEgMDk6
MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4+Pj4g
SGkgYWxsLAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gSSBkZWNpZGVkIHRvIGdpdmUgSmVudXggYW5v
dGhlciBnbywgbGFzdCB0aW1lLCBubyBtYXR0ZXIgd2hhdCAKPj4+Pj4+Pj4+PiBJIHRyaWVkLCBJ
Cj4+Pj4+Pj4+Pj4gY291bGRuJ3QgZ2V0IG9yY2EgdG8gY29tZSBvbiBhZnRlciBsb2dnaW5nIGlu
IHRvIHRoZSBzeXN0ZW0uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBEb2VzIGFueW9uZSBoYXZlIGFu
eSBhZHZpY2U/Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBBbHNvLCBpZiB0aGlzIGRvZXNuJ3Qgd29y
ayBvdXQsIGlzIHRoZXJlIGEgZ3VpZGUgZm9yIGRvaW5nIGEgCj4+Pj4+Pj4+Pj4gTWFuamFybwo+
Pj4+Pj4+Pj4+IGFyY2hpdGVjdCBpbnN0YWxsPyAiTWFuamFybyBUYWxraW5nIiBnb3QgdXBkYXRl
ZCBhIGxpdHRsZSAKPj4+Pj4+Pj4+PiB3aGlsZSBhZ28sIGFuZAo+Pj4+Pj4+Pj4+IGlmLCBhcyBJ
IHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhhdCAKPj4+
Pj4+Pj4+PiBvbmUgYSBnby4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFRoYW5rcyBzbyBsb25nLgo+
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gV2FybSByZWdhcmRzLAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4g
QnJhbmR0IFN0ZWVua2FtcAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gU2VudCBmcm9tIG15IE1hY0Jv
b2sgQWlyCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBDb250YWN0Ogo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4gUGhvbmU6ICsyNyAoMCk2MCA1MjUgOTE4MSA8dGVsOi8vKzI3NjA1MjU5MTgxPgo+Pj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Pj4gRW1haWw6IGJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tIAo+Pj4+Pj4+
Pj4+IDxtYWlsdG86YnJhbmR0LnN0ZWVua2FtcEBnbWFpbC5jb20+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1wIAo+Pj4+Pj4+Pj4+IDxodHRwOi8vd3d3LnR3
aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+
Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+
Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4KPj4+Pj4K
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

