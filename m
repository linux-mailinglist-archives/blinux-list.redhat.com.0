Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D214763CE
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 21:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639601753;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wnk6bQlPvfRiqSMbM5rsznO4QyeGjcwUXV6PnntcveE=;
	b=MhSEVgEwN9W0H2t5cj29wveHTIJWQj+RnmiWEt8rHWHgewnxREszN5Fm+ruwESQhle6A3T
	k/QwxM6Ro0jddK2sagoBuBHYz8ShLeoba2wCpUK6J2nIAqzXjT52sHPCTS31+0QdQ/0Ef0
	H2jOFJhZrBbXYaUUv4eEzKGto7rcxTs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-163-ZOP6viTMMC-hDVY7Zr07NA-1; Wed, 15 Dec 2021 15:55:51 -0500
X-MC-Unique: ZOP6viTMMC-hDVY7Zr07NA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94B2F193F562;
	Wed, 15 Dec 2021 20:55:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 806DE1037F3E;
	Wed, 15 Dec 2021 20:55:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9CB6F1809CB8;
	Wed, 15 Dec 2021 20:55:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BFKtUUB002490 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Dec 2021 15:55:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 649732024CBA; Wed, 15 Dec 2021 20:55:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FA582024CB8
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 20:55:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BD18805A2E
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 20:55:27 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-649-JefyqwTkONmLfmQLrQnk0g-1; Wed, 15 Dec 2021 15:55:25 -0500
X-MC-Unique: JefyqwTkONmLfmQLrQnk0g-1
Received: by mail-qt1-f174.google.com with SMTP id f20so23250407qtb.4
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 12:55:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=YEhJUFM8eIOwqEnz/KrgRS1YEeagzvWbjwdqOiAferw=;
	b=HZvm8yY9xezzNG8rlps/Yqj1WEXpGAoLQfp5kqI6FcfFm2GKnhg5QGsuq812ygeMs0
	QY96Cm4P/8EeVXgDGfE6EHYXsxGNaMjW0cGxqUE82EObEXounqG/wy+GcHz7yoH99+AC
	6qjAHWV6j5Y6l5IeH3N1GnA1ypkVWpIU+HNhCsunOUzRRkFPjIlLdx9hZvlxWjxBMpII
	LzMeiAAdHFgQo4YDwz09v/RfVEX3/w0uTDzatg+B3nytl3g7BeL2kOt/LNmVPIYXWYBH
	3u/X7vvN2F11dF72kg5AvzcOAk5bDKa0iWLrS2X5yDvJjZfVqUtliWWzGbWPp4RTftB0
	5bMg==
X-Gm-Message-State: AOAM531BvUABGfvZuz43T55qMKxr6XM0IcZEwhLnDn/CswF0J7Qeqw1g
	bYrBBtGUfTixJgQ3HHtVlGxW9CNEg4iV+mB7
X-Google-Smtp-Source: ABdhPJyYksHMv59aSUFj++qWEYhr3VM+Qa0FE1JdwhfYRd/4z8piuCUmjhqrKTSJwZzYMPctHOx1Tw==
X-Received: by 2002:ac8:5911:: with SMTP id 17mr14026737qty.645.1639601724723; 
	Wed, 15 Dec 2021 12:55:24 -0800 (PST)
Received: from ?IPV6:2603:6011:ba01:8300:985c:7d55:c95d:3b4f?
	(2603-6011-ba01-8300-985c-7d55-c95d-3b4f.res6.spectrum.com.
	[2603:6011:ba01:8300:985c:7d55:c95d:3b4f])
	by smtp.gmail.com with ESMTPSA id s4sm1724577qko.47.2021.12.15.12.55.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 15 Dec 2021 12:55:24 -0800 (PST)
Message-ID: <c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
Date: Wed, 15 Dec 2021 15:55:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
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
In-Reply-To: <06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKV29ya2VkIGxpa2UgYSBjaGFtcC7CoCBUaGUgb24sbHkgdGhpbmcgSSB3YXMgY29uZnVz
ZWQgYWJvdXQgd2FzIHRoZSBkaXNrIApzZWxlY3Rpb24uwqAgQWZ0ZXIgc2VsZWN0aW5nIHRoZSBm
ZGlzayB5b3UgYXJlIHN0aWxsIGF0IGRpc2sgc2VsZWN0aW9uIApzdGVwIHdoaWNoIHlvdSBjYW4g
anVzdCBwcmVzcyBlbnRlciB0byBjb250aW51ZSBhcyB0aGUgZGlzayB5b3UgY2hvc2UgYXQgCnRo
ZSBmaXJzdCBwcm9tcGVkIGl0IGlzIGFscmVhZmR5IHNlbGVjdGVkLCBidXQgdGhpcyBpcyBub3Qg
c3Bva2VuIGJ5IApvcmNhIGhvd2V2ZXIganVzdCBrZWVwIHRoaXMgaW4gbWluZC4gQWxzbywgdGhl
IGRlc2t0b3Agc2VsZWN0aW9uIHdlbnQgCmZpbmUuwqAgSSBzZWxlY3RlZCBhbHNhLXV0aWxzLCBl
c3BlYWt1cCwgZmlyZWZveCBhbmQgdGh1bmRlcmJpcmQgYW5kIApldmVyeXRoaW5nIGVsc2Ugd2Vu
dCBmaW5lIGF0IGxlYXN0IGluIG15IHZtIHdoaWNoIGlzIHVzaW5nIFVFRkkuCgoKTWF0dGhldwoK
CgpPbiAxMi8xNC8yMDIxIDc6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4gT25jZSB5b3UgYm9vdCB0aGUgSVNPIHdpdGggc3BlZWNoICh3aGljaCBpcyBk
b3duIG9uY2Ugb24gdGhlIGJvb3QgCj4gbWVudSwgc28ganVzdCBkb3duIGFuZCBlbnRlciB0aGVu
IHdhaXQpLCBhbmQgaXQgbG9ncyB5b3UgaW4gYW5kIHlvdSAKPiBnZXQgdGhlIHJvb3RAYXJjaGlz
byBwcm9tcHQganVzdCB0eXBlIGFyY2hpbnN0YWxsIGFuZCBpdCdsbCBkbyBhIAo+IGNvbm5lY3Rp
b24gdGVzdCB0aGVuIGNvbWUgdXAgd2l0aCB0aGUgZ3VpZGVkIGluc3RhbGxlci4KPgo+IDk5JSBv
ZiBpdCBpcyBpbnR1aXRpdmUuIEkndmUgbm90IGdvdCBhcm91bmQgdG8gdGVzdGluZyB0aGUgaW5z
dGFsbCAKPiBvcHRpb24gZm9yIGRlc2t0b3BzLiBJIHBlcnNvbmFsbHkgZ28gd2l0aCBhIGJhc2Ug
aW5zdGFswqAgYW5kIGN1c3RvbWl6ZSAKPiBteSBzeXN0ZW0gYXMgbmVlZGVkLCBidXQgWU1NViBv
biB0aGF0IG9uZS4gVGhlIG9ubHkgYml0IHRoYXQgdHJpcHBlZCAKPiBtZSB1cCB3YXMgdGhlIHJl
Z2lvbiBzZWxlY3Rpb24gKHNlY29uZCBzdGVwKSBhbmQgdGhlIGRpc2sgc2VsZWN0aW9uIAo+IHNp
bmNlIHRoYXQgY2hhbmdlZCB0byB3aGVyZSB5b3Ugc2VsZWN0IHlvdXIgZGlzaywgdGhlbiBkb24n
dCBzZWxlY3QgCj4gYW55dGhpbmcgdG8gY29udGludWUuIEl0IHdhbGtzIHlvdSB0aHJvdWdoIHRo
ZSBzdGVwcyBvbmUgYXQgYSB0aW1lLCAKPiBhbmQgaWYgeW91IGtub3cgaG93IHRvIGluc3RhbGwg
QXJjaCBhY2Nlc3NpYmx5LCB0aGUgZXh0cmEgcGFja2FnZXMgCj4gc3RlcCBpcyB0aGUgc2FtZSBh
cyBwYWNzdHJhcC4KPgo+IEZldyB0aGluZ3MgdG8gbm90ZToKPgo+IDEuIEl0IGF1dG8gZW5hYmxl
cyBlc3BlYWt1cCBpZiBpdCdzIGluc3RhbGxlZCAoSSB1c3VhbGx5IGluc3RhbGwgaXQgCj4gb3V0
IG9mIGhhYml0KQo+Cj4gMi4gSSdtIG5vdCBzdXJlIG9mIHRoZSBrZXlzIHRvIHNodXQgZXNwZWFr
dXAgb2ZmIGhvd2V2ZXIuLi4KPgo+IEFuZCB0aGUgYmlnLCBiaWcgb25lLiBUaGUgbGFzdCBJIGNo
ZWNrZWQsIE5vdmVtYmVyLiBJdCBvbmx5IHdvcmtkIG9uIAo+IFVFRkkgbWFjaGluZXMgL2J1dC8g
dGhhdCBtaWdodCBoYXZlIGJlZW4gY2hhbmdlZC4gSSBob25lc3RseSBkb24ndCAKPiBrbm93IGlm
IGl0J3Mgd29ya2luZyBvbiBsZWdhY3kgQklPUyBtYWNoaW5lcwo+Cj4gTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGksCj4+Cj4+Cj4+IElzIHRoaXMgZ3VpZGVk
IGluc3RhbGxlciBwYXJ0IG9mIHRoZSBhcmNoIGlzbz/CoCBJZiBzbywgaG93IGRvIHlvdSBnZXQg
Cj4+IGl0IGdvaW5nPz/CoCBJIHdvdWxkIGxpa2UgdG8gZ2l2ZSB0aGlzIGEgdGVzdCBhbmQgc2Vl
IGhvdyB0aGlzIHdvcmtzLgo+Pgo+Pgo+PiBNYXR0aGV3Cj4+Cj4+Cj4+Cj4+IE9uIDEyLzE0LzIw
MjEgNzo1OSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+
IGVsbCB0aGVyZSdzIGEgaGlzdG9yeSBvZiBwb3N0cyBhcyBmYXIgYXMgSmVudXggYnJlYWtpbmcg
d2l0aCBwZW9wbGUgCj4+PiB3YXkgbW9yZSBxdWFsaWZpZWQgdGhhbiBtZSBkaWdnaW5nIHRocm91
Z2ggdGhlIGNvZGUgYW5kIGhhdmluZyAKPj4+IHRoaW5ncyBicmVhayBvbiB0aGVpciBpbnN0YWxs
cy4gSSd2ZSBwZXJzb25hbGx5IGhhZCBKZW51eCBjb3JydXB0IGEgCj4+PiBmbGFzaCBkcml2ZSB0
byB0aGUgcG9pbnQgaXQncyBhIGdsb3JpZmllZCBwYXByd2VpZ2h0IGR1ZSB0byAKPj4+IHNoZW5h
bmlnYW5zIHdpdGggd3JpdGluZyB0byBpdC4KPj4+Cj4+PiBUaGF0IGJlaW5nIHNhaWQuIE5vdyBB
cmNoIGl0c2VsZiBoYXMgdGhlIGd1aWRlZCBtb2RlIGluc3RhbGxlciwgCj4+PiB3aGljaCBpcyBw
ZXJmZWN0bHkgdXNlYWJsZSB3aXRoIGVzcGVha3VwIGFuZCB0aGF0IG9uY2UgaW5zdGFsbGVkLCBh
cyAKPj4+IG9mIHRoaXMgbW9udGggYXV0byBlbmFibGVzIHNwZWVjaC9icmFpbGxlIGF0IHRoZSBl
bmQgb2YgdGhlIGluc3RhbGwsIAo+Pj4gSSdkIGFyZ3VlIEFyY2ggYXJlIGRvaW5nIGEgYmV0dGVy
IGpvYiBhdCBtYWtpbmcgdGhlaXIgc3lzdGVtcyAKPj4+IGFjY2Vzc2libGUqIHRoYW4gcGVvcGxl
IGFzc3VtZSB0aG91Z2guIEk7ZCBhbHNvIHNheSBva2F5LCBBcmNoIGhhcyBhIAo+Pj4gZ3VpZGVk
IGluc3RhbGxlciB0aGF0IHdvcmtzKiogYW5kIGlmIGJvb3RlZCB3aXRoIGFjY2Vzc2liaWxpdHkg
b24sIAo+Pj4ga2VlcHMgdGhvc2Ugc2V0dGluZ3MgYW5kIGdpdmVzIHlvdSBhIHdvcmtpbmcgKGJh
c2UsIG1pbmQpIHN5c3RlbSBvdXQgCj4+PiBvZiB0aGUgYm94Lgo+Pj4KPj4+Cj4+PiAqIFByb3Zp
ZGVkIHlvdSBpbnN0YWxsIGFsc2EtdXRpbHMvZXNwZWFrdXAgYXMgcGVyIGEgbm9ybWFsIAo+Pj4g
YWNjZXNzaWJpbGl0eSBBcmNoIGluc3RhbGwuIFRoZXJlJ3MgYSBzdGVwIGluIHRoZSBndWlkZWQg
aW5zdGFsbGVyIAo+Pj4gd2hlcmUgaXQgYXNrcyBmb3IgZXh0cmEgcGFja2FnZXMsIHRoYXQncyB3
aGVyZSB5b3UgcGx1ZyAKPj4+IGFsc2EtdXRpbHMvZXNwZWFrdXAgaW4uIGVzcGVha3VwLnNlcnZp
Y2UgZ2V0cyBhdXRvIGVuYWJsZWQgYXQgdGhlIAo+Pj4gZW5kIG9mIHRoZSBpbnN0YWxsIGFzIHBh
cnQgb2YgdGhlIGluc3RhbGxlcgo+Pj4KPj4+Cj4+PiAqKiBXb3JrcywgYXMgbG9uZyBhcyB5b3Un
cmUgb2theSB3aXRoIGEgYmFzZSBpbnN0YWxsIGJ1dCBnZXR0aW5nIGEgCj4+PiBERSB1cCBhbmQg
cnVubmluZyBpc24ndCB0aGF0IGJhZCByZWFsbHkgb25jZSB5b3UgZGlkIHRoZSBpbnN0YWxsLiAK
Pj4+IEkndmUgbm90IGdvdCB0aGUgZGVza3RvcCBvbmVzIHRvIHdvcmsgY3VycmVudGx5IGJ1dCBz
dGlsbCBwb2tpbmcgYXQgCj4+PiBpdC4gSSdtIHRlbXB0ZWQgdG8gYWRkIGluIG9yY2Etc3BlZWNo
LWRpc3BhdGNoZXIgYW5kIHNvIGZvcnRoIGludG8gCj4+PiB0aGUgZXh0cmEgcGFja2FnZXMgc3Rl
cC4KPj4+Cj4+Pgo+Pj4gYXQgdGhhdCBob3dldmVyLgo+Pj4KPj4+Cj4+PiBPbiAxMi8xNC8yMSAx
Mjo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIaSwK
Pj4+Pgo+Pj4+Cj4+Pj4gSSBkaWQgdXNlIHRoZSBsYXRlc3QgYXMgb2YgYWJvdXQgMTUgaG91cnMg
YWdvLiBJIGRpZCBhbHNvIHZlcmlmeSAKPj4+PiB0aGUgaXNvLgo+Pj4+Cj4+Pj4KPj4+PiBUaGUg
aXNzdWUgdGhpcyB0aW1lIGlzIHRoYXQgYWZ0ZXIgcnVubmluZyB0aGUgaW5zdGFsbGVyIGFuZCAK
Pj4+PiByZWJvb3RpbmcsIG5vdGhpbmcgc3Bva2UuIHRoZSBzZWVpbmdBSSBvbiB0aGUgaXBob25l
IGNvdWxkIHJlYWQgdGhlIAo+Pj4+IHNjcmVlbiBqdXN0IGZpbmUsIGJ1dCBJIGNvdWxkbid0Cj4+
Pj4KPj4+Pgo+Pj4+IExhc3QgdGltZSBpdCB3YXMgb3JjYSBpbiBNYXRlIHRoYXQgZGlkbid0IHdh
bnQgdG8gY29tZSBvbiwgbm8gCj4+Pj4gbWF0dGVyIHdoYXQgSSBkby4KPj4+Pgo+Pj4+Cj4+Pj4g
SSBmb3VuZCB0aGF0IHdpdGggSmVudXgsIG5ldmVyIGV4cGVjdCB0aGUgc2FtZSB0aGluZyB0byBn
byB3cm9uZyAKPj4+PiB0d2ljZSwgaG93ZXZlciBzb21ldGhpbmcgd2lsbCBicmVhay4KPj4+Pgo+
Pj4+Cj4+Pj4gV2FybSByZWdhcmRzLAo+Pj4+Cj4+Pj4KPj4+PiBCcmFuZHQKPj4+Pgo+Pj4+IE9u
IDIwMjEvMTIvMTQgMTQ6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+Pj4+IEplbnV4IGdldHMgcmVndWxhciB1cGRhdGVzIGxhdGVzdCBpcyAyMDIxLjExLjE3
IHVubGVzcyB0aGF0IAo+Pj4+PiBjaGFuZ2VkIHRvZGF5Lgo+Pj4+PiBEaWQgeW91IHZlcmlmeSB5
b3VyIGlzbyBkb3dubG9hZD/CoCBJZiBJIGZpbmQgYW4gLnNoYTUxMiBmaWxlIGZpbGUgCj4+Pj4+
IGZvciBhbgo+Pj4+PiBpc28sIEkgd29uJ3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3Qg
dmVyaWZ5aW5nIGl0IHdpdGggdGhlIAo+Pj4+PiAuc2hhNTEyCj4+Pj4+IGZpbGUuwqAgU28gdHdv
IHBvdGVudGlhbCBwcm9ibGVtcyBub3QgdXNpbmcgY3VycmVudCBKZW51eCBpbnN0YWxsIAo+Pj4+
PiBpc28gb3IKPj4+Pj4gZmFpbGVkIHRvIHZlcmlmeSBpc28uwqAgSWYgeW91IGRvbid0IGhhdmUg
dGhvc2UgdHdvIHByb2JsZW1zLCAKPj4+Pj4gcGxlYXNlIHdyaXRlCj4+Pj4+IGRubC5uYXNoQGdt
YWlsLmNvbSBhbmQgbGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiAK
Pj4+Pj4geW91cgo+Pj4+PiBpbnN0YWxsIGZhaWwuwqAgVGhhdCBvbmUgaXMgdGhlIGRldmVsb3Bl
ci4KPj4+Pj4KPj4+Pj4KPj4+Pj4gT24gVHVlLCAxNCBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4KPj4+Pj4+IEhpLAo+Pj4+Pj4KPj4+Pj4+
Cj4+Pj4+PiBKZW51eCBmYWlsZWQgb24gbWUsIGFnYWluLiBJIHRoaW5rIEknbGwgZ2l2ZSBpdCBh
IHNraXAgZm9yIG5vdywgCj4+Pj4+PiB0aGF0IGlzIHVubGVzcwo+Pj4+Pj4gdGhlIGRldiBhY3R1
YWxseSBmaXhlcyB0aGUgdGhpbmcuCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgYW0gb24gRmVkb3Jh
LCBmb3Igbm93LCBiZWNhdXNlIGl0IHdhcyB0aGUgbmVhcmVzdCBVc2Igc3RpY2sgSSAKPj4+Pj4+
IGNvdWxkIGdyYWIKPj4+Pj4+IHF1aWNrbHkuCj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IEkgbWlnaHQg
anVzdCBnaXZlIHRoZSB2YW5pbGxhIEFyY2ggSVNPIGFub3RoZXIgZ28uIFdoeSBub3Q/Cj4+Pj4+
Pgo+Pj4+Pj4gT24gMjAyMS8xMi8xNCAxMzowNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPj4+Pj4+PiDCoMKgb3IgTWFuamFybyBBcmNoaXRlY3QuCj4+Pj4+Pj4K
Pj4+Pj4+PiBQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNjZXNzIHdpdGggdGhlIHZhbmlsbGEgQXJj
aCBJU08gYW5kIHRoZSAKPj4+Pj4+PiBndWlkZWQKPj4+Pj4+PiBpbnN0YWxsZXIgKHRoZSBhcmNo
aW5zdGFsbCBvbmUpLCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgCj4+Pj4+Pj4gdGFsa2luZywg
d2VudAo+Pj4+Pj4+IHRocm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRpbHMvZXNwZWFrdXAg
YW5kIHRoZW4gcHV0Cj4+Pj4+Pj4gc3BlZWNoLWRpc3BhdGNoZXIvT3JjYS92b2ljZXMgYW5kIGEg
d2luZG93IG1hbmFnZXIgb24gb25jZSB0aGUgCj4+Pj4+Pj4gc3lzdGVtIHdhcwo+Pj4+Pj4+IGlu
c3RhbGxlZC4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gSmVudXggaGFzIG5ldmVyIHJlYWxseSB3
b3JrZWQgZm9yIG1lIG9uIGEgVk0gb3IgYmFyZSBtZXRhbCBhdCAKPj4+Pj4+PiBhbGwsIHdoZXJl
YXMKPj4+Pj4+PiB0aGUgb2ZmaWNpYWwgYXJjaCBJU08gaXMgd29ya2luZyByYXRoZXIgd2VsbCwg
YW5kIEkgZHVubm8gaWYgdGhlIAo+Pj4+Pj4+IEFyY2hpdGVjdAo+Pj4+Pj4+IGVkaXRpb24gaXMg
MzYvNjQgYml0IG9yIDMyYml0IG9ubHkgb3IgNjRiaXQgb25seS4gQWRtaXR0ZWRseSwgCj4+Pj4+
Pj4gSSd2ZSBnb3QgYQo+Pj4+Pj4+IDY0Yml0IFVFRkkgc3lzdGVtIHNvIHRoZSBvZmZpY2lhbCBJ
U28gd29ya3MgZmxhd2xlc3NseSBvbiBpdCAKPj4+Pj4+PiBob3dldmVyLCBidXQKPj4+Pj4+PiBZ
TU1WIG9uIHRoYXQgb25lWWVzLCBidXQgeW91IHByb2JhYmx5IGRvbid0IHdhbnQgdG8gaGVhciBp
dCBpZiAKPj4+Pj4+PiB5b3UgYXJlIHNldAo+Pj4+Pj4+IG9uIHVzaW5nIEplbnV4IGhvd2V2ZXIu
Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiAxMi8xNC8yMSAwOToxOCwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4gSGkgYWxsLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJ
IGRlY2lkZWQgdG8gZ2l2ZSBKZW51eCBhbm90aGVyIGdvLCBsYXN0IHRpbWUsIG5vIG1hdHRlciB3
aGF0IEkgCj4+Pj4+Pj4+IHRyaWVkLCBJCj4+Pj4+Pj4+IGNvdWxkbid0IGdldCBvcmNhIHRvIGNv
bWUgb24gYWZ0ZXIgbG9nZ2luZyBpbiB0byB0aGUgc3lzdGVtLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBE
b2VzIGFueW9uZSBoYXZlIGFueSBhZHZpY2U/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEFsc28sIGlmIHRo
aXMgZG9lc24ndCB3b3JrIG91dCwgaXMgdGhlcmUgYSBndWlkZSBmb3IgZG9pbmcgYSAKPj4+Pj4+
Pj4gTWFuamFybwo+Pj4+Pj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2luZyIg
Z290IHVwZGF0ZWQgYSBsaXR0bGUgd2hpbGUgCj4+Pj4+Pj4+IGFnbywgYW5kCj4+Pj4+Pj4+IGlm
LCBhcyBJIHNhaWQsIEplbnV4IGRvZXNuJ3Qgd29yayBvdXQsIEknZCBsaWtlIHRvIGdpdmUgdGhh
dCAKPj4+Pj4+Pj4gb25lIGEgZ28uCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFRoYW5rcyBzbyBsb25nLgo+
Pj4+Pj4+Pgo+Pj4+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJyYW5kdCBT
dGVlbmthbXAKPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2VudCBmcm9tIG15IE1hY0Jvb2sgQWlyCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IENvbnRhY3Q6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFBob25lOiArMjcgKDApNjAg
NTI1IDkxODEgPHRlbDovLysyNzYwNTI1OTE4MT4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gRW1haWw6IGJy
YW5kdC5zdGVlbmthbXBAZ21haWwuY29tIAo+Pj4+Pj4+PiA8bWFpbHRvOmJyYW5kdC5zdGVlbmth
bXBAZ21haWwuY29tPgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5rYW1w
IDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPj4+Pj4+Pj4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pgo+Pj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

