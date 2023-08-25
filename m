Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41319788BAA
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 16:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692973675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dVB8FL/xftjm6bQuV5AZI0tti/RqDvqZoNoVKtXUS7c=;
	b=QauZN082pscsJWvl1QhF6TkHRvFXReaxIYCHKHKobwPL15JZSPAGd6LC4p38l6UxEz7SbE
	82uu3K8ryR01e6g2IVq4GTlTTRf3oSTJC4S5XOIqExAyIVzY8d6kqq4S4Mgxa+Z5SHN/z3
	r0pefSveAQQA2izaudizQ0E9/NScMcI=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-400-oQE0y69KPseM9LbfsLFLoQ-1; Fri, 25 Aug 2023 10:27:51 -0400
X-MC-Unique: oQE0y69KPseM9LbfsLFLoQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C162D1C0755D;
	Fri, 25 Aug 2023 14:27:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 00A7740C6F4C;
	Fri, 25 Aug 2023 14:27:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 483D019465B7;
	Fri, 25 Aug 2023 14:27:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 16:27:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: microknoppix download
To: blinux-list@redhat.com
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
 <mailman.1702.1692956975.18731.blinux-list@redhat.com>
 <mailman.1703.1692957281.18731.blinux-list@redhat.com>
 <mailman.1788.1692969348.18730.blinux-list@redhat.com>
 <mailman.1765.1692969505.18727.blinux-list@redhat.com>
In-Reply-To: <mailman.1765.1692969505.18727.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:HcPE1BZT51Q=;FXOZGOPaAFvOlZv75+YJdIKHuMr
 w6IVGemTHmdG2M1DBrzkEHpSNADt3If6hQdc7ke01hDSvWZjr4Z5eLS+TSua5Y9J2FtamJS5P
 fvq9Mix9K7+ltxqz3IsYD19awW32JHS9cdy30BPTWFr1HBqBj6uG6WhiZfi9EC+gFPUMs8ZHX
 b/uqpspYkVVeJLUc7O4s9h1mp1TQPufVeH2x7w3lSuVpAHYgYelQqz3OV+WsBzS4TPSaAyfp5
 R0V77gBoO59DC7oARoJSvTa26JUMNxvgqIMGxYg4kQljy8mYOzPAkvY+6y/+oNtEn+DbBPX//
 0og/ijtOMQ1l+bWed5yENc4sNjBzW1i7SSvgzom0TLvFUmxaGsGaZZhlospQa7Fmvj1YtrbpB
 3HuOOEH/di38JAbn4xBIwtRucblKlW4Z6lc5OCE8ZcdhyXiV+/q7nzmzFERrUJsut5G+mT0KM
 OPCXzXF4hSywuvkue4VpPCKBDEnIvVzFIOflBN8ajq0rp9AKvkzB/LdFxRNBG9cR60yB93GrY
 HKtd/UiHgvAH51F/zOlg1tuQgYoAm/TeCwLML4c/xv5aOxyU9nE74ZY0j9OOLVdpahBxahTMl
 LnjR/zNHZEVSIWtvbGLuTImjnn1CYbyDSVFQkEMFIf7F1ZAKGIwdVLskCPozImRPFeXXmIauO
 IMTSFg3qqET6MwqFbM1kpQv7kP26+rOuu5ezjy1hs7CdbK421D8wYxabJOjvVy2IvSN2gi1JD
 4xDZQdwBONgsvLnVp+yicSdD5YhfEBVgd/l5jwqO1PREIMByiQxNIskzUAHtc/PTOweMjUmmn
 NJwOqC1EIBwJiTUPIAuEKXSp9lPXal49+3kSnEro2YhdQ19k09ZqUEEbM94zBZg1QGyhHivbC
 h1KXcZEoAuh5bdjShnBy4PBpg3OWINJJLaKpixclx5VLKAj7CkqSZYlkx/1W04w4/w+Wf/DUa
 btbadz9fZdTv2eegfKsIUj0YMnY=
Message-ID: <mailman.1969.1692973663.18729.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RG9uJ3Qga25vdyB3aGF0cyBnb2luZyB3cm9uZy4KVHJ5IGl0IGluIHR3byBzdGVwcyAoYm90aCBj
b21tYW5kcyBhcyBvbmUgbGluZSkuCkRvd25sb2FkIHRoZSB0cmFja2VyIGZpbGU6Cgp3Z2V0ICJo
dHRwOi8vdG9ycmVudC51bml4LWFnLnVuaS1rbC5kZS90b3JyZW50cy9LTk9QUElYX1Y5LjFDRC0y
MDIxLTAxLTI1LUVOLnRvcnJlbnQiCgpEb3dubG9hZCB0aGUgZGF0YSB0byBkZXNpcmVkIGRpcmVj
dG9yeSAoLXcgUEFUSCk6Cgp0cmFuc21pc3Npb24tY2xpIC13IH4vdG1wIEtOT1BQSVhfVjkuMUNE
LTIwMjEtMDEtMjUtRU4udG9ycmVudAoKVGhpcyB3b3JrZWQgZm9yIG1lIHRlc3RpbmcgaXQgb25s
eSBhIG1pbnV0ZSBhZ28uCkhUSApndWVudGVyCgpBbSAyNS4wOC4yMyB1bSAxNToxOCBzY2hyaWVi
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSW50ZXJlc3RpbmcsIEkgb25s
eSBnb3QgMSBmb3IgYW4gZXJyb3IgdmFsdWUgYW5kIHRoYXQncyBnb29kIHRvIGtub3cgZm9yCj4g
d3JpdGluZyBzY3JpcHRzLgo+Cj4KPiAtLSBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29t
PiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+IGRlZmVuc2Ugb2YgbGliZXJ0
eTogc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0Cj4gb3Jk
ZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+Cj4gT24gRnJpLCAyNSBBdWcgMjAyMywgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPgo+PiBJIGdvdCBlcnJvciA0MDQg
d2hlbiB1c2luZyB0aGF0IHVybCBpbiBsZnRwIGFuZCB0cmFuc21pc3Npb24tY2xpIHNpbXBseQo+
PiBmYWlsZWQgdG8gZG93bmxvYWQuICBXaGF0IEknbSBnb2luZyB0byBkbyBuZXh0IHRvIGhlbHAg
bXkgbGVhcm5pbmcgaXMgdG8KPj4gcnVuIGl0IGluIGxmdHAgb24gYSBzaW5nbGUgbGluZSBhbmQg
dGhlbiBjYXB0dXJlIHRoZSBlcnJvciB2YWx1ZSB0aGF0Cj4+IHJldHVybnMgd2l0aCAkPy4gIFRo
aXMgd2F5IEkgY2FuIGltcHJvdmUgbXkgb3duIHNjcmlwdCB3cml0aW5nLgo+Pgo+Pgo+PiAtLQo+
PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPgo+PiAiVGhlcmUgYXJlIGZvdXIgYm94
ZXMgdG8gYmUgdXNlZCBpbiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+IHNvYXAsIGJhbGxvdCwganVy
eSwgYW5kIGFtbW8uCj4+IFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+IEVkIEhvd2RlcnNo
ZWx0IDE5NDAuCj4+Cj4+IE9uIEZyaSwgMjUgQXVnIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBBbmQgdGhlIHRvcnJlbnQgZm9yIHRoZSBDRCBp
bWFnZSAoNjY4IG1lZ2FieXRlcyBvbmx5IHZlcnN1cyBhYm92ZSBEVkQgaW1hZ2Ugb2YKPj4+IDQu
MzcgR0IpIGlzIGhlcmU6Cj4+PiBodHRwOi8vdG9ycmVudC51bml4LWFnLnVuaS1rbC5kZS90b3Jy
ZW50cy9LTk9QUElYX1Y5LjFDRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQKPj4+Cj4+Pj4+IEFtIDI1
LjA4LjIzIHVtIDEwOjU3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
bjoKPj4+Pj4+IEhhcyBhbnlvbmUgZ290IGEgZG93bmxvYWQgdGhhdCBjYW4gZG93bmxvYWQgdGhl
IGxhdGVzdCBlbmdsaXNoIHZlcnNpb24gb2YKPj4+Pj4+IG1pY3Jva25vcHBpeD/CoCBFdmVyeW9u
ZSBvZiB0aGUgbWlycm9ycyBvbmx5IGhhcyBnZXJtYW4gdGV4dCBvbiBpdCBhbmQgSQo+Pj4+Pj4g
ZGlkbid0IHN0dWR5IHRoYXQgbGFuZ3VhZ2UgZW5vdWdoIHRvIHVuZGVyc3RhbmQgdGhlIHdlYnNp
dGUncyBjb250ZW50Lgo+Pj4+Pj4gSSdtIGhhdmluZyBiZXR0ZXIgbHVjayBkb3dubG9hZGluZyB0
aHJvdWdoIGJpdHRvcnJlbnQgdGhlc2UgZGF5cyB0aGFuIHdpdGgKPj4+Pj4+IG90aGVyIGRvd25s
b2FkZXJzIGdpdmVuIHRoZSBsb3cgZ3JhZGUgb2YgdmVyaXpvbiBmaW9zIGNvbm5lY3Rpdml0eS4K
Pj4+Pj4+IHdnZXQgZm9yIGluc3RhbmNlIGlzIGRvd25sb2FkaW5nIGlzbydzIHRoYXQgZmFpbCBz
aGEyNTZzdW0gLWMgdGVzdHMgb25jZQo+Pj4+Pj4gZG93bmxvYWRlZCBhbmQgaXQgZG9lcyB0aGF0
IHBlcnNpc3RlbnRseS4KPj4+Ci0tCi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QK

