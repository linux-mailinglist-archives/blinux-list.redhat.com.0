Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0054E387920
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 14:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621342002;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VQDmrqEwI3FqhmCwjEQbh/0GwcmtCrtLdFRmN2symKg=;
	b=dxlMpIf+8JRdZPdMNDrqiasouX0vunbp6Mm5MEOYXgwptb0VNdHQK/bmhdL3naol7A91BY
	kz5XMvezfrK2EuRJpbkkok4o+C8zacadHUQ9v7Kuv4BsEiZKK3RpoxX5gonxtyvEurRmyu
	Djx/4ehUUj5bKOkWC7PzEeEPGsXXqBA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-nwQ6H-5dNyuk_GVb4SHfpw-1; Tue, 18 May 2021 08:46:40 -0400
X-MC-Unique: nwQ6H-5dNyuk_GVb4SHfpw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD93D803621;
	Tue, 18 May 2021 12:46:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB7EC5D9C0;
	Tue, 18 May 2021 12:46:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7580755344;
	Tue, 18 May 2021 12:46:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14ICkHJg006873 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 08:46:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AD4FDF8850; Tue, 18 May 2021 12:46:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A75029C06D
	for <blinux-list@redhat.com>; Tue, 18 May 2021 12:46:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F25E283395E
	for <blinux-list@redhat.com>; Tue, 18 May 2021 12:46:14 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-27-78Uq-NI9OoGLu3PIqGsAAQ-1; Tue, 18 May 2021 08:46:12 -0400
X-MC-Unique: 78Uq-NI9OoGLu3PIqGsAAQ-1
Received: by mail-wm1-f48.google.com with SMTP id
	f6-20020a1c1f060000b0290175ca89f698so1434249wmf.5
	for <blinux-list@redhat.com>; Tue, 18 May 2021 05:46:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dO/rSWXiLEPevoJe0Q/R5UxW+QMl0saEvZtHjLKgX2o=;
	b=MYkHiDWy/Sd0jmVorRqb3xEG/MlnWoR1fXZs+HgZ0pvfj1wq5Mv4505oA2f0pM41n2
	xI/xnDgLxE+stAn97rTjFO5nLqLUYSmOmhMBSUO+eLR5L59KF7vNv7noYzcNgiNPv4GK
	aBuALHAD3NATYLx1ohpuPVe6d1ZfDjDpWzunpAQ2fwYnfPelviy5NDCyaxO2nMXWUR4j
	/nB9CT0iZKfqzSeZp699TWV6flyRVBHAV0phFbqZh0+29P1/nqMyr4bAI/HSsQG78YgM
	6ktdbxqIOoapnnuAtxRh/Bk5YC8uJOXybPoIjvGJgi12EU/dePIL2aoMNuejHWGjZBAP
	yCLQ==
X-Gm-Message-State: AOAM533TvfZBHm0WjsMtrBIlym1r36PLkAJQvG41OnLrWxe614U3TfHB
	LBXom+h9S3Fc2FKgwd0edfKaaLIej041JQ==
X-Google-Smtp-Source: ABdhPJxlMyRWCWs4Vd8++LZeAB8dAB2wXUawFybr5jUFr59W7AjOYqdCZemBAtpjBg0VoiF1iyO8jA==
X-Received: by 2002:a05:600c:154a:: with SMTP id
	f10mr5481990wmg.31.1621341970639; 
	Tue, 18 May 2021 05:46:10 -0700 (PDT)
Received: from [192.168.1.5] (net-2-36-138-168.cust.vodafonedsl.it.
	[2.36.138.168]) by smtp.gmail.com with ESMTPSA id
	x13sm11322821wro.31.2021.05.18.05.46.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 18 May 2021 05:46:10 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
Message-ID: <43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
Date: Tue, 18 May 2021 14:46:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

SGVsbG8gdGhlcmUsCgoKVGhhbmtzIHNvIG11Y2gsIG5vdywgdGhhdCBwYXJ0IG9mIHRoZSBwcm9i
bGVtIGlzIHNvbHZlZCEKClRoZSBvdGhlciBwYXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29s
dmVkLCBpcyB0aGF0IGZlbnJpciBkb2Vzbid0IApzcGVhayB3aXRoIGVzcGVhaywgb3IgZXNwZWFr
LW5nLgoKRG8gSSBoYXZlIHRvIHNldCBzb21ldGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhh
cHBlbj8KClRoYW5rcyBhZ2Fpbi4KCkJlc3QgcmVnYXJkcy4KCkZyYW5jaXNjby4KCk9uIDUvMTgv
MjEgMTA6MjQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
SG93ZHkgRnJhbmNpc2NvLAo+Cj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBh
biBkZXBlbmRlbmN5IGJ5IHB5dGhvbi1weWVuY2hhbnQgCj4gaWYgdGhvc2UgYXJlIHNwcmVhZCB3
YXJuaW5ncy4gTWF5YmUgdGhpcyBzaG91bGQgYmUgcmVwb3J0ZWQgdG8gdGhlIAo+IHBhY2thZ2Ug
bWFpbnRhaW5lci4gQnV0IGFueXdheS4KPgo+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2th
Z2UgY29udGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IG5lZWQgYnkgCj4gInN1ZG8gcGFjbWFu
IC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4YW1wbGUgaW4gCj4gbGli
dm9ra28uc286Cj4KPiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8gcGFjbWFu
IC1GeSBsaWJ2b2lra28uc28KPiBbc3Vkb10gUGFzc3dvcnQgZsO8ciBjaHJ5czoKPiA6OiBTeW5j
aHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4uCj4gwqBjb3JlIDkwMyw1IEtpQsKgIDYsMTcg
TWlCL3MgMDA6MDAgCj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+IDEwMCUKPiDCoGV4dHJhIDksMyBN
aULCoCAyNiw5IE1pQi9zIDAwOjAwIAo+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPiAxMDAlCj4gwqBj
b21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxIAo+IFsjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
XSAKPiAxMDAlCj4gwqBtdWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwIAo+IFsj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjXSAKPiAxMDAlCj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPiDCoMKg
wqAgdXNyL2xpYi9saWJ2b2lra28uc28KPiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAk
Cj4KPiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxpYnZvaWtr
byIKPiB0byBzaWxlbmNlIG91dCBhbGwgdGhlIHdhcm5pbmdzIGRvIHRoaXM6Cj4gc3VkbyBwYWNt
YW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4KPiB0aGlzIGluc3RhbGwgYWxsIDMgKElN
TyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQgc2hvdWxkIG5vdCBjcmVhdGUgCj4gYSB3YXJu
aW5nLCBidXQgd2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPgo+IGkgdXNlIGlyc3NpIGFzIElSQyAo
Y29tbWFuZGxpbmUpIGNsaWVudC4gdGhlcmUgaXMgYWxzbyBQaWRnaW4gKGFzIAo+IGdyYXBoaWNh
bCBjbGllbnQpLiBib3RoIGFyZSB2ZXJ5IG5pY2UuCj4KPiBsb29raW5nIGZvcndhcmQgdG8gc2Vl
IHlvdSBpbiBJUkMgOikuCj4KPiBjaGVlcnMgY2hyeXMKPgo+Cj4gQW0gMTguMDUuMjEgdW0gMDg6
NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+PiBIZWxsbyB0
aGVyZSwKPj4KPj4KPj4gSSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMs
IGJ1dCBub3QgdGhlIG90aGVyIHR3bywgc28gCj4+IHRoYW5rcyBmb3IgdGhhdC4KPj4KPj4gQWxz
bywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXksIEkganVzdCBpbnN0YWxsZWQgaXQs
IEkgZGlkbid0IAo+PiBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRlZC4KPj4KPj4gTXkgcXVlc3Rp
b24gbm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0sIHdoYXQgYXJlIHJlY29tbWVuZGVkIElSQyAK
Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93
IGJlZm9yZSBqb2luaW5nIAo+PiBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJl
Pwo+Pgo+PiBUaGFua3MgYWdhaW4uCj4+Cj4+IEJlc3QgcmVnYXJkcy4KPj4KPj4gRnJhbmNpc2Nv
Lgo+Pgo+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdl
IGludGVuZGVkIHRvIGNocnlzIChGZW5yaXIgCj4+PiBhdXRob3IpIG9uIHRoZSAjYTExeSBjaGFu
bmVsIG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPj4+Cj4+PiBNYXliZSBqb2luIGhpbSB0aGVyZT8K
Pj4+Cj4+PiBEaWRpZXIKPj4+Cj4+PiBMZSAxNy8wNS8yMDIxIMOgIDIwOjE1LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+Pj4gSGVsbG8gZXZlcnlvbmUs
Cj4+Pj4KPj4+Pgo+Pj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVS
IHVzaW5nIHlhb3VydC4KPj4+Pgo+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRo
ZSBjb21tYW5kCj4+Pj4KPj4+PiBmZW5yaXIKPj4+Pgo+Pj4+IGluIGEgdGVybWluYWwsIGhvdyBl
dmVyLCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBhbmQgdGhpczoKPj4+Pgo+Pj4+Cj4+
Pj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0kIGZlbnJpcgo+Pj4+ICoqIChwcm9jZXNzOjcwMDgp
OiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOiAKPj4+PiBs
aWJoc3BlbGwuc28uCj4+Pj4gMDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBz
dWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6
IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyBwbHVnaW46IAo+Pj4+IGxpYnZvaWtrby5zby4K
Pj4+PiAxOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBk
aXJlY3RvcnkKPj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc3
OiBFcnJvciBsb2FkaW5nIHBsdWdpbjogCj4+Pj4gbGlibnVzcGVsbC5zbwo+Pj4+IC40OiBjYW5u
b3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+
Pgo+Pj4+Cj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0
aGVyLgo+Pj4+Cj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+Pj4+Cj4+Pj4gQmVzdCBy
ZWdhcmRzLgo+Pj4+Cj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pgo+Pj4KPj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

