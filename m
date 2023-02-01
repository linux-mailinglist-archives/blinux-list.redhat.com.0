Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 705F7686F13
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675280651;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NNGquca47u+g/TTUWj4XR5Ms5YwmwV6WvZQh+uugJIw=;
	b=iZvLukfJGFKnQkDasts+Dpo+JF4rfOIiOCBoz5Zpb0qQKWzc3BphzmKk3qCy1JHagDPxb2
	h23+BnefNtcyZqLsdrjzSzSMe6KLNDpHxw/gsAFO8PVZZUxCJpm8/MyfdWlWbY2WclBw4K
	RDBCU2XDZ673zubV9ykVj8rkdBZUPt0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-556-9QlrJPSrNIC1bNxFmcC2ZA-1; Wed, 01 Feb 2023 14:44:07 -0500
X-MC-Unique: 9QlrJPSrNIC1bNxFmcC2ZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2621B1C06EE2;
	Wed,  1 Feb 2023 19:44:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 00570140EBF4;
	Wed,  1 Feb 2023 19:44:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA5A719465B7;
	Wed,  1 Feb 2023 19:44:05 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 12:43:59 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.4055.1675278134.8177.blinux-list@redhat.com>
 <mailman.3826.1675278288.8171.blinux-list@redhat.com>
 <mailman.3839.1675280568.8171.blinux-list@redhat.com>
In-Reply-To: <mailman.3839.1675280568.8171.blinux-list@redhat.com>
Message-ID: <mailman.3619.1675280645.8173.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXMgdGhlaXIgYSBiZXR0ZXIgcHJvZ3JhbSB0byB1c2UgdGhhbiBwbGF5ZXI/wqAgSSBoYXZlIG5v
IHByb2JsZW0gCnN3aXRjaGluZywgSSBqdXN0IHBpY2tlZCBpdCBiZWNhdXNlIGl0IHNlZW1lZCB0
byBiZSB0aGUgdG9wLgoKTWlrZS4KCgoKT24gMi8xLzIwMjMgMTI6NDIgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksCj4KPiBUaGlzIGlzIGEga25vd24g
aXNzdWUgd2l0aCBKZW51eCBhbmQgcnVubmluZyBpbiBWTVdhcmUgd29ya3N0YXRpb24sIGl0IGhh
cyBiZWVuIHRoaXMgd2F5IHNpbnNlIDE1LnguIEkgaGF2ZSB5ZXQgdG8gZmluZCBhIHdheSB0byBn
ZXQgdGhpcyB0byB3b3JrLgo+Cj4gRnJvbTogQmxpbnV4LWxpc3QgPGJsaW51eC1saXN0LWJvdW5j
ZXNAcmVkaGF0LmNvbT4gb24gYmVoYWxmIG9mIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gRGF0ZTogV2VkbmVzZGF5LCAxIEZlYnJ1
YXJ5IDIwMjMgYXQgMTk6MDQKPiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBTdWJqZWN0OiBSZTogQXR0ZW1wdGluZyB0byBi
b290IEplbnV4IGluIGEgdm0uCj4gVk1XYXJlIHdvcmtzdGF0aW9uIHBsYXllciAxNyBub24tY29t
ZXJjaWFsLCB3aW5kb3dzMTEsIG5vdGhpbmcgY2hhbmdlZAo+IGluIHZtd2FyZXMgc2V0dGluZ3Mg
YnV0IGFkanVzdGluZyB0aGUgcmFtIGFuZCBwcm9jZXNzb3JzIGZvciB0aGlzCj4gcGFydGljdWxh
ciBtYWNoaW5lLgo+Cj4gTWlrZS4KPgo+Cj4gT24gMi8xLzIwMjMgMTI6MDIgUE0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpLAo+Pgo+PiBZb3UgZGlkbuKA
mXQgcHJvdmlkZSBhbnkgZGV0YWlscyBoZXJlLgo+Pgo+PiBXaGF0IHZpcnR1YWxpc2F0aW9uIHNv
bHV0aW9uIGFyZSB5b3UgdXNpbmc/IFdoYXQgdmVyc2lvbj8gV2hhdCBob3N0IE9TPwo+Pgo+PiBX
aXRob3V0IGFueSBvZiB0aGVzZSBkZXRhaWxzIHdlIGRpc29u4oCZdCBiZSBhYmxlIHRvIGhlbHAg
eW91Lgo+Pgo+PiBPbiAxIEZlYnJ1YXJ5IDIwMjMgMTg6MDI6NDUgR01ULCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+
IEhleSBhbGwsCj4+Pgo+Pj4gSnVzdCBwdWxsZWQgZG93biB0aGUgbGF0ZXN0IEplbnV4IHRvIGdp
dmUgaXQgYSB0cnksIGJ1dCBmb3Igc29tZSByZWFzb24gSSBjYW5ub3QgZ2V0IGFueSBzcGVlY2gg
b3V0IG9mIGl0LiAgSSBoZWFyIHRoZSBiZWVwcyB3aGVuIHRoZSBWTSBib290cyB1cCwgSSBjYW4g
b2NyIHdpdGggbnZkYSBhbmQgc2VlIHNlbGYtdGVzdCByZXF1ZXN0ZWQsIHBsZWFzZSB3YWl0LCBh
bmQgYWZ0ZXIgYSB3aGlsZSB0aGUgbWVudSBjb21lcyB1cC4gIEkgY2FuIGFsc28gc2VlIHRoYXQg
dGhyb3VnaCBvY3IsIGJ1dCBJIGdldCBubyBzcGVlY2ggd2hlbiBpbnNpZGUgdGhlIHZtLiBJJ3Zl
IGNoZWNrZWQgdG8gbWFrZSBzdXJlIHRoZSBzb3VuZCBjYXJkcyBhcmUgY29ycmVjdCwgYW55b25l
IGhhdmUgYW55dGhpbmcgZWxzZSBJIGNhbiB0cnk/ICBJJ20gbm90IGZpbmRpbmcgYW55IGRvY3Vt
ZW50YXRpb24gYW55d2hlcmUsIHdoaWNoIGlzIHdoeSBJJ20gYXNraW5nIGhlcmUuCj4+Pgo+Pj4g
TWlrZS4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cg==

