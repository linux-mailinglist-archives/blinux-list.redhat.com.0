Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3890638C509
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 12:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621593383;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hdk9rxLYyyBGqfjW+0jV+5vbYW4pvxPjw1ZDGV9i2I4=;
	b=UtErMohAa7p75mww8i/sqx1SHjhCXOj5sFUDJxYPTuYY9YJcfLp1+d9UE/iA/Z/Ylh1kR4
	B5SR74HguL8q8X7K9cO6MvzL95+QRBLhEJr/2KnAdX93JM6z/Ft9WBN+RmC/r8fEVGScGD
	C9Ijafcyt3BzG8Ckh1nIYe8QIhcl8w0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-qQtiyECCM-GQbphiI18ZRA-1; Fri, 21 May 2021 06:36:21 -0400
X-MC-Unique: qQtiyECCM-GQbphiI18ZRA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7132C107ACE8;
	Fri, 21 May 2021 10:36:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF1EC2C01E;
	Fri, 21 May 2021 10:36:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8648444A5A;
	Fri, 21 May 2021 10:36:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LAa9Qv018992 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 06:36:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 470D9117DB1E; Fri, 21 May 2021 10:36:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42D69117DB1A
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:36:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDF28800B26
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:36:06 +0000 (UTC)
Received: from smtprelay08.ispgateway.de (smtprelay08.ispgateway.de
	[134.119.228.107]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-601-qOouk5jsMfeiaga_j0YJbg-1; Fri, 21 May 2021 06:36:04 -0400
X-MC-Unique: qOouk5jsMfeiaga_j0YJbg-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay08.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lk2V0-0007FV-8N
	for blinux-list@redhat.com; Fri, 21 May 2021 12:35:22 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
Message-ID: <760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
Date: Fri, 21 May 2021 12:36:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHkKCj4gSSBoYXZlIGVzcGVhaywgc294LCBhbmQgeGNsaXAgaW5zdGFsbGVkLCBwbHVzIHB1
bHNlYXVkaW8sIAo+IHB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4gCmVz
cGVhay1uZyBpcyB1c2VkIGJ5IGRlZmF1bHQgaW5zdGVhZCBvZiBlc3BlYWsuIGVzcGVhay1uZyBp
cyB0aGUgCnN1Y2Nlc3NvciBvZiBlc3BlYWsuIGRvIHRha2UgY2FyZSB0byBub3QgaW5zdGFsbCBl
c3BlYWsgYnV0IGVzcGVhay1uZyAKYW5kIGdpdmUgYW5vdGhlciBzaG90IDopLgoKCkFtIDIxLjA1
LjIxIHVtIDExOjQ3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoK
PiBIZWxsbyB0aGVyZSwKPgo+Cj4gSnVzdCBmb3IgdGhlIGhlY2sgb2YgaXQsIEkgcmVkaWQgYSBj
bGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0aCAKPiBwdWxzZWF1ZGlvIHRoaXMgdGltZSwgYW5kIEkg
Y29uZmlndXJlZCBldmVyeXRoaW5nIEkgbmVlZGVkIHJ1bm5pbmcgdGhlIAo+IHNoIHNjcmlwdCB5
b3UgaW5kaWNhdGVkLgo+Cj4gSXQgaGFsZiB3b3JrcywgYW5kIGhhbGYgZG9lc24ndC4KPgo+IFdo
YXQgSSBtZWFuIGJ5IHRoYXQgaXMgdGhhdCB3aGVuIEkgcmVzdGFydGVkIHRoZSBtYWNoaW5lLCBq
dXN0IGEgZmV3IAo+IHNlY29uZHMgYWdvIGFuZCByYW4gZmVucmlyIGFzIHN1ZG9lciwgaXQgcGxh
eWVkIHRoZSBzb3VuZCBpY29uLCB0aGluZyAKPiB0aGF0IHdpdGggcGlwZXdpcmUgZGlkbid0IGhh
cHBlbiwgYnV0IGdhdmUgbWUgbm8gc3BlZWNoIGF0IGFsbC4KPgo+IEkgaGF2ZSBlc3BlYWssIHNv
eCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1cyBwdWxzZWF1ZGlvLCAKPiBwdWxzZWF1ZGlvLWFs
c2EsIGFsc2EtdXRpbHMgYW5kIHBsdWdpbnMuCj4KPiBBbnkgc3VnZ2VzdGlvbnM/Cj4KPiBUaGFu
a3MgYWdhaW4uCj4KPiBCZXN0IHJlZ2FyZHMuCj4KPiBGcmFuY2lzY28uCj4KPiBPbiA1LzE4LzIx
IDU6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhv
d2R5LAo+Pgo+PiBkbyB5b3UgaGF2ZSB0aGUgcmVxdWlyZW1lbnRzIGZvciB0aGUgZ2VuZXJpYyBz
b3VuZCAvIHZvaWNlIGRyaXZlcnMgCj4+IGluc3RhbGxlZD8KPj4gVG8gZ2V0IHN1cmUsIHJlaW5z
dGFsbCBpdCBleGVjdXRlOgo+PiBzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCj4+
Cj4+IHNveCBpcyB1c2VkIGZvciBwbGF5IHNvdW5kLCBlc3BlYWsgZm9yIHZvaWNlIG91dHB1dCBp
biB0aGUgZGVmYXVsdCAKPj4gY29uZmlndXJhdGlvbiwgeGNsaXAgaXMgYSBmdW5ueSB0b3kgdG8g
bGV0IGZlbnJpciBzaGFyZSB0aGUgY2xpcGJvYXJkIAo+PiBiZXR3ZWVuIHlvdXIgR1VJIGFuZCBU
ZXJtaW5hbC4KPj4KPj4gc3RhcnQgZmVucmlyIGZvciB0ZXN0aW5nIGluIGZvcmVncm91bmQgLSB5
b3UgY2FuIHN0b3AgaXQgdXNpbmcgQ1RSTCArIEMKPj4gc3VkbyBmZW5yaXIKPj4KPj4gZGlkIHlv
dSBoZWFyIHRoZSBzdGFydHVwIHNvdW5kPyBmZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29u
IGF0IAo+PiBzdGFydHVwLgo+Pgo+PiBpZiBub3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3QgY29u
ZmlndXJlZC4KPj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPj4gIyBjb25maWd1cmUgdXNlcgo+PiAv
dXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPj4g
IyBjb25maWd1cmUgcm9vdAo+PiBzdWRvIC91c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rv
b2xzL2NvbmZpZ3VyZV9wdWxzZS5zaAo+Pgo+PiAjIG5lZWQgdG8gcmVzdGFydCB0aGF0IHRoZSBj
b25maWd1cmF0aW9uIGZvciBib3RoIGdldCBhY3RpdmUKPj4KPj4gcmVzdGFydAo+Pgo+PiB0aGVu
IHJldHJ5Cj4+Cj4+IHN1ZG8gZmVucmlyCj4+Cj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVlZHMg
YnkgZGVmYXVsdCB0byBydW4gYXMgcm9vdCB0byBjb2xsZWN0IHRoZSAKPj4gZGF0YSBvbiB5b3Vy
IHNjcmVlbiBvciBjYXB1dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIG9y
IAo+PiBjcmVhdGVzIHNvdW5kLCBpdCBkb2VzIHRoaXMgYXMgcm9vdCB1c2VyLiB5b3Ugd29udCBo
ZWFyIHNvdW5kIG9mIGFuIAo+PiBvdGhlciB1c2VyIGJ5IHB1bHNlYXVkaW8gKHNvdW5kIHNlcnZl
cikgZGVzaWduLiBXZSBuZWVkIHRvIHRyYW5zcG9ydCAKPj4gdGhlIHNvdW5kIGNyZWF0ZWQgYXMg
cm9vdCB0byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlIHJ1bm5pbmcgYXMgCj4+IHVzZXIgdG8g
ZmluYWxseSBoZWFyIHRoZSBzb3VuZC4KPj4KPj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAo
c2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSAKPj4gYXVkaW8gdG8gc2VuZCB0
aGUgZGF0YSB0byB5b3VyIHVzZXIgYW5kIGNvbmZpZ3VyZSB1c2VyIHB1bHNlIGF1ZGlvIHRvIAo+
PiBsaXN0ZW4gdG8gdGhlIHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4KPj4KPj4gY2hl
ZXJzIGNocnlzCj4+Cj4+Cj4+IDE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4KPj4+IEhlbGxvIHRoZXJlLAo+Pj4KPj4+Cj4+PiBU
aGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgc29sdmVkIQo+
Pj4KPj4+IFRoZSBvdGhlciBwYXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0
aGF0IGZlbnJpciBkb2Vzbid0IAo+Pj4gc3BlYWsgd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4K
Pj4+Cj4+PiBEbyBJIGhhdmUgdG8gc2V0IHNvbWV0aGluZyBzb21ld2hlcmUgZm9yIHRoYXQgdG8g
aGFwcGVuPwo+Pj4KPj4+IFRoYW5rcyBhZ2Fpbi4KPj4+Cj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pgo+
Pj4gRnJhbmNpc2NvLgo+Pj4KPj4+IE9uIDUvMTgvMjEgMTA6MjQgQU0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSG93ZHkgRnJhbmNpc2NvLAo+Pj4+Cj4+
Pj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5IGJ5IAo+
Pj4+IHB5dGhvbi1weWVuY2hhbnQgaWYgdGhvc2UgYXJlIHNwcmVhZCB3YXJuaW5ncy4gTWF5YmUg
dGhpcyBzaG91bGQgYmUgCj4+Pj4gcmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UgbWFpbnRhaW5lci4g
QnV0IGFueXdheS4KPj4+Pgo+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2thZ2UgY29u
dGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IG5lZWQgCj4+Pj4gYnkgInN1ZG8gcGFjbWFuIC1G
eSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4YW1wbGUgaW4gCj4+Pj4gbGli
dm9ra28uc286Cj4+Pj4KPj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8g
cGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPj4+PiBbc3Vkb10gUGFzc3dvcnQgZsO8ciBjaHJ5czoK
Pj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4uCj4+Pj4gwqBjb3JlIDkw
Myw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAgCj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+Pj4+
IDEwMCUKPj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1pQi9zIDAwOjAwIAo+Pj4+IFsjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjXSAKPj4+PiAxMDAlCj4+Pj4gwqBjb21tdW5pdHkgMjIsOCBNaULCoCAyOSw2
IE1pQi9zIDAwOjAxIAo+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4+PiAxMDAlCj4+Pj4gwqBt
dWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwIAo+Pj4+IFsjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjXSAKPj4+PiAxMDAlCj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+PiDCoMKgwqAg
dXNyL2xpYi9saWJ2b2lra28uc28KPj4+PiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAk
Cj4+Pj4KPj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxp
YnZvaWtrbyIKPj4+PiB0byBzaWxlbmNlIG91dCBhbGwgdGhlIHdhcm5pbmdzIGRvIHRoaXM6Cj4+
Pj4gc3VkbyBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pj4KPj4+PiB0aGlz
IGluc3RhbGwgYWxsIDMgKElNTyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQgc2hvdWxkIG5v
dCAKPj4+PiBjcmVhdGUgYSB3YXJuaW5nLCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPj4+
Pgo+Pj4+IGkgdXNlIGlyc3NpIGFzIElSQyAoY29tbWFuZGxpbmUpIGNsaWVudC4gdGhlcmUgaXMg
YWxzbyBQaWRnaW4gKGFzIAo+Pj4+IGdyYXBoaWNhbCBjbGllbnQpLiBib3RoIGFyZSB2ZXJ5IG5p
Y2UuCj4+Pj4KPj4+PiBsb29raW5nIGZvcndhcmQgdG8gc2VlIHlvdSBpbiBJUkMgOikuCj4+Pj4K
Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pgo+Pj4+Cj4+Pj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2No
cmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+PiBIZWxsbyB0aGVy
ZSwKPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJy
YXJpZXMsIGJ1dCBub3QgdGhlIG90aGVyIHR3bywgCj4+Pj4+IHNvIHRoYW5rcyBmb3IgdGhhdC4K
Pj4+Pj4KPj4+Pj4gQWxzbywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXksIEkganVz
dCBpbnN0YWxsZWQgaXQsIEkgCj4+Pj4+IGRpZG4ndCBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRl
ZC4KPj4+Pj4KPj4+Pj4gTXkgcXVlc3Rpb24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0sIHdo
YXQgYXJlIHJlY29tbWVuZGVkIElSQyAKPj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0g
d29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZSAKPj4+Pj4gam9pbmluZyBhbiBJUkMg
Y2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4+Pgo+Pj4+PiBUaGFua3MgYWdhaW4u
Cj4+Pj4+Cj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pj4KPj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pgo+
Pj4+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdl
IGludGVuZGVkIHRvIGNocnlzIAo+Pj4+Pj4gKEZlbnJpciBhdXRob3IpIG9uIHRoZSAjYTExeSBj
aGFubmVsIG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPj4+Pj4+Cj4+Pj4+PiBNYXliZSBqb2luIGhp
bSB0aGVyZT8KPj4+Pj4+Cj4+Pj4+PiBEaWRpZXIKPj4+Pj4+Cj4+Pj4+PiBMZSAxNy8wNS8yMDIx
IMOgIDIwOjE1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6
Cj4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IEkganVzdCBk
b3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlhb3VydC4KPj4+Pj4+Pgo+
Pj4+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRoZSBjb21tYW5kCj4+Pj4+Pj4K
Pj4+Pj4+PiBmZW5yaXIKPj4+Pj4+Pgo+Pj4+Pj4+IGluIGEgdGVybWluYWwsIGhvdyBldmVyLCBp
IGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBhbmQgdGhpczoKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+
Pj4+Pj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0kIGZlbnJpcgo+Pj4+Pj4+ICoqIChwcm9jZXNz
OjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgCj4+Pj4+Pj4g
cGx1Z2luOiBsaWJoc3BlbGwuc28uCj4+Pj4+Pj4gMDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVj
dCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAw
OCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyAKPj4+Pj4+PiBwbHVn
aW46IGxpYnZvaWtrby5zby4KPj4+Pj4+PiAxOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZp
bGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTog
V0FSTklORyAqKjogMjA6MTI6NDUuMzc3OiBFcnJvciBsb2FkaW5nIAo+Pj4+Pj4+IHBsdWdpbjog
bGlibnVzcGVsbC5zbwo+Pj4+Pj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6
IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gQW55IGlk
ZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0aGVyLgo+Pj4+Pj4+Cj4+Pj4+
Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4+Pj4+Cj4+Pj4+Pj4gQmVzdCByZWdhcmRz
Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+
Cj4+Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pj4KPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

