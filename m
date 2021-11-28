Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CEC460AF9
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 00:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638141026;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YwnLzMWcTBIuXQBgCrlNtrwn8oQLzJzxcYpURbth/ZA=;
	b=BGEMrLuT1QX45gg2kCjTN/uJmQRqVN9LaKTWZ2Ap05yMQ9xgTO2HG6ey1N0g1jIOCsTTDZ
	senjd+G6ngcqytarA97Qyuw39odGhqTNBWP1vunSxFyr1r4J7kKK1rhnyjCiyejNEuhu6s
	cyBhYwyD60c3M4tz9OEcjnOlzlOXL80=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-506-6UAm3u4aPLis-vG4l46RKg-1; Sun, 28 Nov 2021 18:10:22 -0500
X-MC-Unique: 6UAm3u4aPLis-vG4l46RKg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C844D2F21;
	Sun, 28 Nov 2021 23:10:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 445F55D6B1;
	Sun, 28 Nov 2021 23:10:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15CA81809C87;
	Sun, 28 Nov 2021 23:10:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASN9sNv029536 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 18:09:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 00C832026D4D; Sun, 28 Nov 2021 23:09:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECA902026D5D
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 23:09:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08F97185A79C
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 23:09:51 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-167-QZab_as_Oy2AmdilvfB5WQ-1; Sun, 28 Nov 2021 18:09:48 -0500
X-MC-Unique: QZab_as_Oy2AmdilvfB5WQ-1
Received: by mail-qk1-f182.google.com with SMTP id t83so20866296qke.8
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 15:09:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=UFOojKONezZn/IqM+HoGIBYUM9zSKZvgRSVmu13vm0o=;
	b=zeVDribLWyzTfYf9ghJ66yo6CgrCLwrUA0kTLJdaIC9ZpG5EAOI22QfE8hjSi3zxmb
	ZFw95Xiv1N6k7RvNl94/3eS9IySmpZcTCaa81d7iCeMqJHh+c9Nt1VWZhVsD3C14L5qt
	kRgNHSOR2O4HGbVeeWpjhXDtr89qJmT/IRDrvAHEo98qFfZtxyUyUuv270SK6DTZd8eS
	jwRPfp8aBYPsoeocfVJFjNqm8+v/kGVEjW+z43w5at8pvFGILMv8uF899B/ToqymdjQB
	Q4R4MlgCqm33GMrtevyK3bDHlU9y7joOO/R+DKgKw+mESeFKxAgAb7V8xItfbOEnBmrD
	w3bQ==
X-Gm-Message-State: AOAM532JgXDGXYShbBtPdA4bdvaDU+mIAl4W0YGh9W8gYqK1mBLwiKsF
	5dVDdAsOSThqRrc1tSEY/XJgZjjTvWhDyrsL
X-Google-Smtp-Source: ABdhPJxYfUHWOeHNmsc7yRS1B9JBzlJRUAqQ2nu7ZEzeNRTRgtb/buTteqDOv9La2ArTZ5u/5VvR3g==
X-Received: by 2002:a05:620a:1708:: with SMTP id
	az8mr35937117qkb.142.1638140987753; 
	Sun, 28 Nov 2021 15:09:47 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	f10sm7393158qkp.135.2021.11.28.15.09.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 28 Nov 2021 15:09:47 -0800 (PST)
Subject: Re: WEBM, is it the default option of yt-dlp downloads?
To: blinux-list@redhat.com
References: <8e070d49-f0ee-f2b8-9086-c38fbd232003@gmail.com>
	<fda47b2b-0bad-b566-b60d-942b64720311@slint.fr>
	<ed84ed62-9e28-7054-9f49-aa505ada1a1f@hubert-humphrey.com>
	<91c67ade-b15f-7130-5641-980ffc0e1a6f@slint.fr>
	<c692751c-9531-b44d-4f30-324fed10f80b@slint.fr>
	<Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
Message-ID: <0e2c01d4-2455-8496-20ac-b94d6d1a97dc@gmail.com>
Date: Sun, 28 Nov 2021 18:09:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2111281548330.113324@server2.shellworld.net>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

TE9MIERpZGllciwKCkkgYWxzbyBhc2sgYSBsb3Qgb2YgcXVlc3Rpb25zIGFuZCBhc2sgZm9yIGhl
bHAgb24gdGhpcyBsaXN0IGJlY2F1c2UgSSBhbSAKaW50ZXJlc3RlZCBpbiBiZWNvbWluZyBhIExp
bnV4IHVzZXIuIEkgaGF2ZSBubyBhbWJpdGlvbiBvciBpbnRlcmVzdCBvZiAKYmVjb21pbmcgYW4g
ZXhwZXJ0LiBZb3Uga25vdyB0aGF0IExpbnV4IGlzIG5vdCBhbiBlYXN5IHN5c3RlbSBhbmQgdW5s
ZXNzIAp5b3UgaGF2ZSB0YWtlbiBzb21lIGNsYXNzZXMgaW4gY29tcHV0ZXJzIG1vc3Qgb2YgdGhl
IHRlcm1zIG1heSBzb3VuZCB0byAKeW91IGFzIHRvdGFsbHkgZm9yZWlnbiBsYW5ndWFnZS4KCkkg
cmVhZCB0aGUgcXVlc3Rpb25zIGFuZCB0aGXCoCByZXBsaWVzIG9uIHRoaXMgbGlzdCBhbmQgZmlu
ZCBteXNlbGYgbG9zdCwgCmFuZCB3b25kZXIgaWYgSSBuZWVkIGEgbWFzdGVycyBpbiBjb21wdXRl
ciBzY2llbmNlcyB0byBrZWVwIHVwISEgaGFoYWhhaGEKCkNoZWVycywKCklicmFoaW0KCk9uIDEx
LzI4LzIxIDM6NTggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gRGlkaWVyLAo+IE9uIFN1biwgMjggTm92IDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IFBTIGFuZCBPVDogTXkgZnJpZW5kLCBpc24ndCBpdCB0aW1l
IGVub3VnaCB0aGF0IHlvdSBtYW5hZ2UgeW91ciBMaW51eCAKPj4gc3lzdGVtCj4+IHlvdXJzZWxm
IG1vc3Qgb2YgdGhlIHRpbWUsIG5vdCByZWx5aW5nIG9uIHlvdXIgTGludXggc3BlY2lhbGlzdCBv
ciBMaW51eAo+PiBwZXJzb24sIGhvd2V2ZXIgeW91IGNhbGwgdGhleT8KPiBNYXkgSSBhc2sgaG93
IHlvdSBjYW4gbWFrZSBhIHN0YXRlbWVudCBhYm91dCB0aGUgbGlmZSBzaXR1YXRpb24gb2YgCj4g
YW5vdGhlciBwZXJzb24/Cj4gVW5sZXNzIHlvdSBhcmUgdGhpbmtpbmcgdGhhdCBldmVyeSBMaW51
eCB1c2VyIGlzIGxpa2UgeW91cnNlbGYgb2YgY291cnNlLgo+IFRoZSBjby13b3JraW5nIHNwYWNl
IHdoZXJlIG15IFRvcm9udG8gb2ZmaWNlIGlzIGJhc2VkIGhhcyBhIHRlY2huaWNpYW4gCj4gd2hv
IHdlIGFsbMKgIHJlbHkgb24gdG8gbWFuYWdlIHRoZSBtYW55IGRpZmZlcmVudCB0b29scyBpbmRp
dmlkdWFscyB1c2UgCj4gb24gYSBkYWlseSBiYXNpcy4uLnNvIHdlIGNhbiBnZXQgb24gd2l0aCB0
aGUgYnVzaW5lc3Mgb2YgZG9pbmcgb3VyIGpvYnMuCj4gTGlrZXdpc2UgSSBwZXJzb25hbGx5IHJl
bHkgb24gdGhlIHByb2Zlc3Npb25hbCBleHBlcnRpc2XCoCBvZiB0aG9zZSB3aG8gCj4gbWFuYWdl
IHNoZWxsd29ybGQsIHNvIEkgY2FuIGdldCBvbiB3aXRoIHdoYXQgSSBhbSBleHBlcnQgaW4sIGNy
aXRpY2FsIAo+IHdoZW4gc29tZW9uZSBzZWVtcyB0byBkbyB3aGF0IHlvdSBhcmUgc3VnZ2VzdGlu
ZywgcHJvamVjdMKgIHRoZWlyIAo+IHBlcnNvbmFsIHVuZGVyc3RhbmRpbmfCoCBvZiBMaW51eCBv
bnRvwqAgdGhpcyBzZXJ2aWNlLsKgIFNvbWVvbmUgaGFzIAo+IGRhbWFnZWQgYSBjcml0aWNhbCBw
cm9ncmFtwqAgdGhhdCB3ZSBhcmUgYWxsIGZvcmNlZCB0byBkZWFsIHdpdGggYXQgdGhlIAo+IHRp
bWUuCj4gV2UgaGF2ZSBlbmdhZ2VkIGluIHRoaXMgZGlzY3Vzc2lvbiBiZWZvcmUuCj4gT25lIHJl
YXNvbiBzcGVha2luZyBwZXJzb25hbGx5IHdoeSBJIGZlZWwgTGludXggZW5qb3lzIGxlc3Mgb2Yg
dGhlIAo+IGNvbW1lcmNpYWwgbWFya2V0wqAgaXMgYmVjYXVzZSwgdG8gcmVhbGx5IG1ha2UgaXQg
d29yaywgeW91IG11c3QgYmUgYSAKPiBwcm9ncmFtbWVyLsKgIEVzcGVjaWFsbHkgZ2l2ZW4gYWxs
IHRoZSBsYXllcnMgb2YgdGhlIGRpc3RyaWJ1dGlvbnMsIGFuZCAKPiB0aGUgbWFueSBkaXN0cmli
dXRpb25zIGludm9sdmVkLgo+IElmIGNoaW1lIGhhcyBtYW5hZ2VkIHRvIGZpbmQgc29tZW9uZSBp
bnRlcmVzdGVkIGVub3VnaCB0byB3cml0ZSAKPiBzY3JpcHRzIGZvciBoaW0sIGFuZMKgwqAgaW5j
b3Jwb3JhdGUgTGludXggZWxlbWVudHMgZm9yIGhpbSwgd2hvIGFyZSB5b3UgCj4gdG8ganVkZ2U/
Cj4gSGlzIGxpZmUsIGhpcyBtYWNoaW5lLCBhbmQgaGlzIHJlc291cmNlcy4KPiBLYXJlbgo+Cj4K
Pgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+Pgo+PiBMZSAyOC8xMS8yMDIxIMOgIDIxOjEyLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiDCoEhpIENo
aW1lLAo+Pj4KPj4+IMKgQW1hemluZ2x5IHRoZSBzYW1lIGd1eSAoRGFuaWVsIFRyaXplbikgbWFp
bnRhaW4gYm90aCBwaXBlLXZpZXdlciBhbmQKPj4+IMKgeW91dHViZS12aWV3ZXIuCj4+Pgo+Pj4g
wqBUaGUgb25seSBvYnZpb3VzIGRpZmZlcmVuY2UgYmVpbmcgdGhhdCBwaXBlLXZpZXdlciBkb2Vz
IG5vdCBuZWVkIGEgCj4+PiBZb3VUdWJlCj4+PiDCoEFQSQo+Pj4gwqBrZXkuIEZvciB0aGlzIHJl
YXNvbiBJIHdpbGwgcGFja2FnZSB0aGlzIG9uZS4KPj4+Cj4+PiDCoENoZWVycywKPj4+IMKgRGlk
aWVyCj4+Pgo+Pj4gwqBMZSAyOC8xMS8yMDIxIMOgIDIwOjI4LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiA+wqAgSGkgRGlkaWVyOiBZZXN0ZXJkYXkg
SSB0cmllZCBwaXBlLXZpZXdlciwgc3VyZSBpdCB3b3JrcywgYnV0IGV2ZW4gCj4+PiB3aXRoID7C
oCBtYXggcmVzdWx0cyBzZXQgYXQgNTAsIEkgb25seSBnZXQgMjAsIHVubGlrZSB5b3V0dWJlLXZp
ZXdlciAKPj4+IHdoZXJlIGl0IGlzID7CoCA1MC4gV2hlbiBJIGhhZCBzdHJhdy12aWV3ZXIsIEkg
bm90aWNlZCwgeW91IGNvdWxkIGdldCAKPj4+IGF3YXkgd2l0aCBtYXggPiByZXN1bHRzIGF0IDU4
IGJ1dCBoYWxmIG9mIHRoZSBpdGVtcyB3ZXJlIGR1cGxpY2F0ZXMuIAo+Pj4gQnkgdGhlIHdheSwg
bXkgPsKgIExpbnV4IHBlcnNvbiB3cm90ZSBtZSBhbiBhbGlhcyB0byB1cGRhdGUgCj4+PiB5b3V0
dWJlLXZpZXdlci4gQWN0dWFsbHksIGl0cyA+wqAgc2hvcnQgZW5vdWdoLgo+Pj4gPsKgICMhL3Vz
ci9iaW4vc2gKPj4+ID7CoCBjZCAvaG9tZS9jaGltZS95b3V0dWJlLXZpZXdlci8KPj4+ID7CoCBn
aXQgZmV0Y2gKPj4+ID7CoCBnaXQgbWVyZ2UKPj4+ID4gPsKgIHBlcmwgQnVpbGQuUEwKPj4+ID7C
oCBzdWRvIC9ob21lL2NoaW1lL3lvdXR1YmUtdmlld2VyLy4vQnVpbGQgaW5zdGFsbGRlcHMKPj4+
ID7CoCBzdWRvIC9ob21lL2NoaW1lL3lvdXR1YmUtdmlld2VyLy4vQnVpbGQgaW5zdGFsbAo+Pj4g
PsKgIEJhY2sgYWdhaW4gbGl2ZSwgSSBqdXN0IHR5cGUgInR1YmUiIGFuZCBub3cgSSBhbSBhdCAz
LjkuNgo+Pj4gPsKgIENoaW1lCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

