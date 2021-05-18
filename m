Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 82D043873D8
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 10:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621326278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7Sg2xQ2sgW9vGbCwhT9kmj79o14BWgG8ZyGXPxFXIuo=;
	b=A6XedV6/PjQ1TuVVkRTUrYMZf2enk7u+pQBArO3C6ZH0GFynJv/i0TUq20li82gdHRFifb
	6kW7Cs90Zi7F6CRy0wqw5d2YG/8E2OaI5Y66s1TJovofyo43DQTUlNuDszbc5oZ4SP01lo
	K3PI4xeeu16XDX5cVdhwsqCiiUTVW44=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-520-64Bd9-QbNoaOUrEfanjZMQ-1; Tue, 18 May 2021 04:24:36 -0400
X-MC-Unique: 64Bd9-QbNoaOUrEfanjZMQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C9B1980362D;
	Tue, 18 May 2021 08:24:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E53995D9C0;
	Tue, 18 May 2021 08:24:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6EB3B55347;
	Tue, 18 May 2021 08:24:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14I8OHtw017292 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 04:24:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DB4CE2138D0C; Tue, 18 May 2021 08:24:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D68392138D0B
	for <blinux-list@redhat.com>; Tue, 18 May 2021 08:24:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F76C1857F2B
	for <blinux-list@redhat.com>; Tue, 18 May 2021 08:24:15 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de
	[80.67.18.16]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-402-SjaD8-tWPROP-04NsMVAvQ-1; Tue, 18 May 2021 04:24:12 -0400
X-MC-Unique: SjaD8-tWPROP-04NsMVAvQ-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay04.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1liv0k-0007Zz-CX
	for blinux-list@redhat.com; Tue, 18 May 2021 10:23:30 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
Message-ID: <a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
Date: Tue, 18 May 2021 10:24:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkgRnJhbmNpc2NvLAoKaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBk
ZXBlbmRlbmN5IGJ5IHB5dGhvbi1weWVuY2hhbnQgaWYgCnRob3NlIGFyZSBzcHJlYWQgd2Fybmlu
Z3MuIE1heWJlIHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZSBwYWNrYWdlIAptYWludGFp
bmVyLiBCdXQgYW55d2F5LgoKeW91IGNhbiBhc2sgcGFjbWFuIHdoYXQgcGFja2FnZSBjb250YWlu
cyB0aGUgc3BlY2lmaWMgZmlsZSB5b3UgbmVlZCBieSAKInN1ZG8gcGFjbWFuIC1GeSBmaWxlbmFt
ZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4YW1wbGUgaW4gbGlidm9ra28uc286CgoxMDox
NCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28K
W3N1ZG9dIFBhc3N3b3J0IGbDvHIgY2hyeXM6Cjo6IFN5bmNocm9uaXNpZXJlIFBha2V0ZGF0ZW5i
YW5rZW4uLi4KIMKgY29yZSA5MDMsNSBLaULCoCA2LDE3IE1pQi9zIDAwOjAwIApbIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjI10gCjEwMCUKIMKgZXh0cmEgOSwzIE1pQsKgIDI2LDkgTWlCL3MgMDA6MDAgClsjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjXSAKMTAwJQogwqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAw
OjAxIApbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjI10gCjEwMCUKIMKgbXVsdGlsaWIgMjIyLDUgS2lCwqAgMTIs
OCBNaUIvcyAwMDowMCAKWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAoxMDAlCmV4dHJhL2xpYnZvaWtrbyA0
LjMuMS0xCiDCoMKgwqAgdXNyL2xpYi9saWJ2b2lra28uc28KMTA6MTUgW2NocnlzQGJsYWNrYmVh
c3Qgfl0gOikgJAoKc28gdGhlIHBhY2thZ2UgeW91IG5lZWQgZm9yIGxpYnZva2tvLnNvIGlzICJs
aWJ2b2lra28iCnRvIHNpbGVuY2Ugb3V0IGFsbCB0aGUgd2FybmluZ3MgZG8gdGhpczoKc3VkbyBw
YWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCgp0aGlzIGluc3RhbGwgYWxsIDMgKElN
TyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQgc2hvdWxkIG5vdCBjcmVhdGUgYSAKd2Fybmlu
ZywgYnV0IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMpCgppIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1h
bmRsaW5lKSBjbGllbnQuIHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcyAKZ3JhcGhpY2FsIGNsaWVu
dCkuIGJvdGggYXJlIHZlcnkgbmljZS4KCmxvb2tpbmcgZm9yd2FyZCB0byBzZWUgeW91IGluIElS
QyA6KS4KCmNoZWVycyBjaHJ5cwoKCkFtIDE4LjA1LjIxIHVtIDA4OjU3IHNjaHJpZWIgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiBIZWxsbyB0aGVyZSwKPgo+Cj4gSSBtYW5h
Z2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMsIGJ1dCBub3QgdGhlIG90aGVyIHR3
bywgc28gCj4gdGhhbmtzIGZvciB0aGF0Lgo+Cj4gQWxzbywgdGhhbmtzIGZvciBzdWdnZXN0aW5n
IHRvIHVzZSB5YXksIEkganVzdCBpbnN0YWxsZWQgaXQsIEkgZGlkbid0IAo+IGtub3cgeWFvdXJ0
IHdhcyBkZXByZWNhdGVkLgo+Cj4gTXkgcXVlc3Rpb24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBk
dW0sIHdoYXQgYXJlIHJlY29tbWVuZGVkIElSQyAKPiBjbGllbnRzPyBob3cgZG8gSSBnZXQgdGhl
bSB3b3JraW5nPyB3aGF0IHNob3VsZCBJIGtub3cgYmVmb3JlIGpvaW5pbmcgCj4gYW4gSVJDIGNo
YW5uZWwsIHdoYXQgZXZlciBpdCBtaWdodCBiZT8KPgo+IFRoYW5rcyBhZ2Fpbi4KPgo+IEJlc3Qg
cmVnYXJkcy4KPgo+IEZyYW5jaXNjby4KPgo+IE9uIDUvMTcvMjEgOToxOSBQTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGksIEkganVzdCBwb3N0ZWQgYSBs
aW5rIHRvIHRoaXMgbWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5cyAoRmVucmlyIAo+PiBhdXRob3Ip
IG9uIHRoZSAjYTExeSBjaGFubmVsIG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPj4KPj4gTWF5YmUg
am9pbiBoaW0gdGhlcmU/Cj4+Cj4+IERpZGllcgo+Pgo+PiBMZSAxNy8wNS8yMDIxIMOgIDIwOjE1
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBIZWxs
byBldmVyeW9uZSwKPj4+Cj4+Pgo+Pj4gSSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9t
IHRoZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+Pj4KPj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3
aXRoIHRoZSBjb21tYW5kCj4+Pgo+Pj4gZmVucmlyCj4+Pgo+Pj4gaW4gYSB0ZXJtaW5hbCwgaG93
IGV2ZXIsIGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+Pj4KPj4+Cj4+
PiBbZnJhbmNpc2NvQEJsdWVibGluayB+XSQgZmVucmlyCj4+PiAqKiAocHJvY2Vzczo3MDA4KTog
V0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nIHBsdWdpbjogCj4+PiBsaWJo
c3BlbGwuc28uCj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2gg
ZmlsZSBvciBkaXJlY3RvcnkKPj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDox
Mjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOiAKPj4+IGxpYnZvaWtrby5zby4KPj4+IDE6
IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9y
eQo+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJyb3Ig
bG9hZGluZyBwbHVnaW46IAo+Pj4gbGlibnVzcGVsbC5zbwo+Pj4gLjQ6IGNhbm5vdCBvcGVuIHNo
YXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4KPj4+Cj4+PiBB
bnkgaWRlYXMgb24gaG93IHRvIGZpeCBpdCwgYW5kIG5vIHNwZWVjaCBlaXRoZXIuCj4+Pgo+Pj4g
VGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4KPj4+IEJlc3QgcmVnYXJkcy4KPj4+Cj4+PiBG
cmFuY2lzY28uCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

