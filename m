Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71248500638
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 08:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649918268;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nlIe+Xk2lmZ2Lipy+96x593tgLVOhvfp7YGA80VSDrs=;
	b=TvdUsi2aM8Q7XkGdhasLsWuvfJYhuDp0qKOHkwl67RgXLYr5DzAcQb0zX+EpwgOhziMN2a
	dR6WYtOCIoqhhOTr5UtRciDqqQNW+vht3BlMNPPBxQZ0MQk6kusFcziXks+ylA+9HFqIKG
	uaP6Yd+znX56kjVn+N5HLrw9P3yN/ak=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310-69DhFbsQNXKKHjh_U0gGeQ-1; Thu, 14 Apr 2022 02:37:47 -0400
X-MC-Unique: 69DhFbsQNXKKHjh_U0gGeQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A046B86B8AC;
	Thu, 14 Apr 2022 06:37:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 31F8F7B7C;
	Thu, 14 Apr 2022 06:37:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9DE891940352;
	Thu, 14 Apr 2022 06:37:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 08:37:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
 <mailman.8511.1649903521.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.8511.1649903521.111206.blinux-list@redhat.com>
Message-ID: <mailman.8597.1649918264.111201.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpJIGFtIERpZGllciBTcGFpZXIsIFNsaW50IG1haW50YWluZXIgYW5kIHNpZ2h0ZWQu
CgpJIGFtIGZydXN0cmF0ZWQgbm90IHRvIGJlIGFibGUgdG8gZm9sbG93IHRoaXMgZGlzY3Vzc2lv
biBhcyBJIHdvdWxkIGxpa2UsIGFzIGluCm1vc3QgY2FzZXMgSSBkbyBub3Qga25vdyB3aG8gc3Bl
YWtzLCBhbnN3ZXJpbmcgdG8gd2hvbSBhbmQgdG8gd2hpY2ggbWVzc2FnZS4KClRoaXMgaXMgbW9z
dGx5IGR1ZSB0byB0aGUgZmFjdCB0aGF0IGlkZW50aXRpZXMgb2YgcG9zdGVycyBhcmUgbm90IGRp
c3BsYXllZCBpbgp0aGlzIGxpc3QgaW4gdGhlICJGcm9tIiBmaWVsZC4KCkZvciBTbGludCB3ZSBo
YXZlIGEgZGVkaWNhdGVkIG1haWxpbmcgbGlzdCBob3N0ZWQgYnkgZnJlZWxpc3RzLm9yZyB2ZXJ5
IGVhc3kgdG8KdXNlIGFzIGluZGljYXRlZCBpbiB0aGUgZm9vdGVyIGFkZGVkIHRvIGVhY2ggbWVz
c2FnZSwgcGFzdGVkIGJlbG93OgoKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQpUaGUgU2xpbnQgbWFp
bGluZyBsaXN0LgpBcmNoaXZlOiBodHRwczovL3d3dy5mcmVlbGlzdHMub3JnL2FyY2hpdmUvc2xp
bnQKVG8gc3Vic2NyaWJlIG9yIHVuc3Vic2NyaWJlLCBlbWFpbCBzbGludC1yZXF1ZXN0QGZyZWVs
aXN0cy5vcmcgd2l0aCB0aGUgc3ViamVjdAonc3Vic2NyaWJlJyBvciAndW5zdWJzY3JpYmUnLCB0
aGVuIGFuc3dlciB0aGUgZW1haWwgeW91IHdpbGwgcmVjZWl2ZS4KTW9yZTogZW1haWwgc2xpbnQt
cmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggYXMgc3ViamVjdCAnaGVscCcgb3IgJ2NvbW1hbmRz
Jy4KClNvIEkgc3VnZ2VzdCB0aGF0IHdlIG9wZW4gYSBsaXN0IG9uIGZyZWVsaXN0cy5vcmcgKGl0
IGlzIGZyZWUpIHRoYXQgd291bGQKc3VwZXJzZWRlIHRoaXMgb25lLgoKVGhlIGxpc3RzIHRoZXJl
IGhhdmUgYSBzZWFyY2hhYmxlIGFyY2hpdmUgYnkgbW9udGhzLCB3aGljaCBjYW4gYmUgc29ydGVk
IGJ5CmRhdGUsIGRhdGUgcmV2ZXJzZSBhbmQgdGhyZWFkIGFuZCBpbiBjYXNlIG9mIHRocmVhZHMg
aXQgaXMgaW5kZW50ZWQuCgpFeGFtcGxlczoKaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9hcmNo
aXZlL3NsaW50LwoKaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9hcmNoaXZlL3NsaW50LzAzLTIw
MjIKaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9hcmNoaXZlL3NsaW50LzAzLTIwMjI/dGhyZWFk
cz0xCmh0dHBzOi8vd3d3LmZyZWVsaXN0cy5vcmcvYXJjaGl2ZS9zbGludC8wMy0yMDIyP3Jldj0x
CgoxLiBXaGF0IGRvIHlvdSB0aGluayBvZiB0aGlzIHByb3Bvc2FsPwoyLiBJcyBzb21lb25lIHdp
bGxpbmcgdG8gYWRtaW5pc3RyYXRlIHN1Y2ggYSBsaXN0PwoKQ2hlZXJzLApEaWRpZXIKZGlkaWVy
YXRzbGludGRvdGZyCgoKTGUgMTQvMDQvMjAyMiDDoCAwNDozMSwgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgZG9uJ3QgaGF2ZSBhbnl0aGluZyBhZ2Fp
bnN0IHByb2plY3RzIHNwZWNpZmljYWxseSB0YXJnZXR0aW5nIGJsaW5kCj4gZW5kIHVzZXJzLCBv
ciBhbnkgb3RoZXIgbmljaGUgZm9yIHRoYXQgbWF0dGVyLCBidXQgSSBkbyB0aGluayBpdHMKPiBi
ZXR0ZXIgdG8gaGF2ZSBhY2Nlc3NpYmlsaXR5IHNlYW1sZXNzbHkgaW50ZWdyYXRlZCBpbnRvIG1h
aW5zdHJlYW0KPiBwcm9kdWN0cyBpbnN0ZWFkIG9mIHRyeWluZyB0byBtYWludGFpbiBhIHNlcGFy
YXRlIGVjb3N5c3RlbSBvZiBnb29kcwo+IGFuZCBzZXJ2aWNlcyB0aGF0IGNhdGVyIG9ubHkgdG8g
YSB0aW55IG1pbm9yaXR5Li4uIFNhZGx5LCBtYW55IHZlbmRvcnMKPiBvbmx5IGNhcmUgYWJvdXQg
c2F0aXNmeWluZyB0aGUgbG93ZXN0IGNvbW1vbiBkZW5vbWluYXRvciBhbmQgbGl0dGxlCj4gc2hv
cnQgb2YgZ292ZXJubWVudCBzYW5jdGlvbnMgd2lsbCBjb252aW5jZSB0aGVtIGFjY2Vzc2liaWxp
dHkgaXMgZXZlbgo+IHdvcnRoIGNvbnNpZGVyaW5nLCBhbmQgZXZlbiB3aGVuIHZlbmRvcnMgcGF5
IGxpcCBzZXJ2aWNlIHRvIGNhcmluZwo+IGFib3V0IGFjY2Vzc2liaWxpdHksIGl0IGNhbiBiZSBo
YXJkIHRvIGV2ZW4gZmluZCBob3cgdG8gZ2l2ZSB0aGVtCj4gZmVlZGJhY2ssIHNvIGV2ZW4gd2l0
aCB0aGUgZG93bnNpZGVzKHNtYWxsIGRldmVsb3BtZW50IHRlYW1zLAo+IGV4dHJlbWVseSBsb3cg
YnVzIGZhY3RvcnMsIHNtYWxsIHVzZXIgYmFzZSB0byBzcHJlYWQgZGV2ZWxvcG1lbnQgY29zdHMK
PiBhY3Jvc3MsIGV0Yy4pLCBpdCdzIGVhc3kgdG8gZmVlbCBsaWtlICJtYWtlIG91ciBvd24iIGlz
IHRoZSBvbmx5Cj4gb3B0aW9uLgo+IAo+IE9mIGNvdXJzZSwgb25lIG5pY2UgdGhpbmcgYWJvdXQg
dGhlIEZPU1MgbW9kZWwgaXMgdGhhdCBvbmUgY2FuCj4gc2ltdWx0YW5lb3VzbHkgYmUgYnVpbGRp
bmcgdGhlaXIgb3duIHZlcnNpb24gb2Ygc29tZXRoaW5nIHdoaWxlIHRyeWluZwo+IHRvIHB1c2gg
dGhlaXIgY29udHJpYnV0aW9ucyB1cHN0cmVhbS4uLiBubyBpZGVhIGhvdyB3ZWxsIGFueSBvZiB0
aGUKPiBtZW50aW9uZWQgcHJvamVjdHMgbWFkZSBhbnkgaGVhZCB3YXkgaW4gdGhhdCByZWdhcmQs
IGFuZCBJJ20gc3VyZQo+IHRoZXJlIHdhcyBzb21lIHB1c2ggYmFjayBmb3IgdGhvc2UgdGhhdCB0
cmllZCwgYnV0IHRoZXJlJ3MgYXQgbGVhc3QKPiB0aGUgb3B0aW9uIHRvIGRvIGJvdGguLi4gSSBs
aWtlIHRoZSBBZHJpYW5lIGFjY2Vzc2liaWxpdHkgc3VpdGUgdGhhdAo+IGNvbWVzIGFzIHBhcnQg
b2YgS25vcHBpeCwgZXZlbiBpZiBJIG9ubHkgcmVhbGx5IHVzZSB0aGUgY29uc29sZSBzY3JlZW4K
PiByZWFkZXIgaXQgY29tZXMgd2l0aCBhbmQgaXRzIHNjcmlwdCBmb3IgbGF1bmNoaW5nIEZpZWZv
eCtPcmNhIHdpdGhvdXQKPiBsYXVuY2hpbmcgYSBmdWxsIGRlc2t0b3AsIGFuZCB0aG9zZSBhcmUg
dGhlIHR3byBtYWluIHJlYXNvbnMgbXkKPiBpbnN0YWxsZWQgc3lzdGVtIGlzIGN1c3RvbWl6ZWQg
ZnJvbSBhIEtub3BwaXggaW5zdGFsbCBhbmQgbm90IGEgRGViaWFuCj4gaW5zdGFsbC4uLiBTaGFt
ZSBBZHJpYW5lIG5ldmVyIGdvdCB1cHN0cmVhbWVkIHRvIERlYmlhbiwgb3IgdGhhdCB3aGVuCj4g
S25vcHBpeCBoYWQgaXRzIG93biByZXBvc2l0b3J5LCBJIGNvdWxkbid0IGp1c3QgYWRkIGl0IHRv
IG15Cj4gc291cmNlcy5saXN0IGFuZCBkbyBhIHN1ZG8gYXB0LWdldCBpbnN0YWxsIGFkcmlhbmUg
b24gYSB2YW5pbGxhIERlYmlhbgo+IHRvIGdldCB0aGUgYmVuZWZpdHMgd2l0aG91IHRoZSBiYWdn
YWdlIG9mIEtub3BwaXggYmVpbmcgcHJpbWFyaWx5IGEKPiBsaXZlIGRpc3Ryby4KPiAKPiBBbmQg
dG8gc29tZSBleHRlbnQsIEkgZG8gdGhpbmsgc29tZXRoaW5nIG5lZWRzIHRvIGJlIG1haW5zdHJl
YW0gdG8KPiBhY3R1YWxseSBiZSB2aWFibGUgZm9yIHRoZSBkaXNhYmxlZC4gSSBtZWFuLCB0aGUg
T3JiaXQgR3JhZmZpdGkgc291bmRzCj4gdG90YWxseSBhd2Vzb21lIGFuZCBJJ2Qgb3JkZXIgb25l
IGltbWVkaWF0ZWx5IGlmIEkgaGFkIHRoZSBmdW5kcy4uLgo+IGJ1dCB1bmxlc3Mgc29tZW9uZSBk
ZXZlbG9wcyBhIHRhY3RpbGUtdmlzdWFsIGRpc3BsYXkgdGhhdCB3b3VsZCBhcHBlYWwKPiB0byB0
aGUgbWFpbnN0cmVhbSBhbmQgY291bGQgbWFrZSBpdCdzIHdheSBpbnRvIGEgZmxhZ3NoaXAgQW5k
cm9pZCBvcgo+IGlPUyBkZXZpY2UsIEkgdGhpbmsgaXRzIGdvaW5nIHRvIGJlIGEgdmVyeSBsb25n
IHRpbWUgYmVmb3JlIGEgdGFjdGlsZQo+IGRpc3BsYXkgdGhlIGF2ZXJhZ2UgYmxpbmQgcGVyc29u
IGNhbiBhY3R1YWxseSBhZmZvcmQgYmVjb21lcyBhCj4gcmVhbGl0eS4KPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cg==

