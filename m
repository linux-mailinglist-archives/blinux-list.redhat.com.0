Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A3453DDA
	for <lists+blinux-list@lfdr.de>; Wed, 17 Nov 2021 02:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637113618;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HpKEKeU7hj7i9/1RwzA4eYK7/D8CMni8BjyAC6gqM7U=;
	b=S5ODkozLw7qtAtKxrwH3Oblbqc1JDFbEqbKYnJiIX4Ct9jLtlUrIRvNNEUHrkTL8JyLM1+
	jir3J/2HYV12WhWMmbpjjrnsoY3hP9Z/qqQ9+n55R7cEG9i9VgZ7B0xEG/OqIdXjLxLCWf
	8xk1RzuBTBZ3VWakSZ3sb2TuvDp1IsU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-pNgbK98YNUq6W1k3EEuFRQ-1; Tue, 16 Nov 2021 20:46:54 -0500
X-MC-Unique: pNgbK98YNUq6W1k3EEuFRQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 961D8102CB73;
	Wed, 17 Nov 2021 01:46:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FC251017CF2;
	Wed, 17 Nov 2021 01:46:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7E7E4A703;
	Wed, 17 Nov 2021 01:46:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AH1kUjX032483 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 16 Nov 2021 20:46:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9544151DD; Wed, 17 Nov 2021 01:46:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F8BE51DC
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 01:46:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACF04811E84
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 01:46:27 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-30-bEyhbhKgO_C57AIeaNWx2w-1; Tue, 16 Nov 2021 20:46:26 -0500
X-MC-Unique: bEyhbhKgO_C57AIeaNWx2w-1
Received: by mail-qv1-f47.google.com with SMTP id b11so893917qvm.7
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 17:46:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=gD7Rtdted6HbDpkMQdDx9YG5+KKWE/dm6Jf1Z/HbNZc=;
	b=FomTRMYRw/J836lLClWyg9+boMNuWqaK4CMbw7mp0UqCKINvukq5UXKW5RtBIRlfKw
	jfdxeKpB3a1ah7EgFfDdjevpCXYLslM1QJSJKWC0Y5BJhbqNWcTEc5UBUdmbabNGS4K0
	o2DapZjQk88Bc89b22xqqCmUdkDEvO5CJAlKBHG8axOglGuNtdFILIyRKpSiqlTtftSB
	Qpdl62Ge7H6/zA1b5gMRz2qkf7rKT0xXIGVCeo/lwpmQ76kQS9woC3lTVn2qPyZ7tDRW
	6ypafPUROrFVPQt3uM4d3blVlOkdGkBIUGsn9Lxqt4tT4p/A59ESUmXeerzDMYnyYbKM
	iQ3A==
X-Gm-Message-State: AOAM531DfYRy2oti/PZoj7c2LoqqF2wuVasIbUj0irKjM/6acdEZUkAv
	mPdXI8+YGSVFRovJCV4DJRBXUnBf3iCEuA==
X-Google-Smtp-Source: ABdhPJzDB7wjRySogltgi+PHfyB2GtPfSlg2VkCZQ6eGCc71IT2TO5MGJMYDEZP5y4gxWqc9UnasPA==
X-Received: by 2002:a05:6214:12d:: with SMTP id
	w13mr51015567qvs.39.1637113585634; 
	Tue, 16 Nov 2021 17:46:25 -0800 (PST)
Received: from [10.211.55.4] (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	e13sm4461460qte.56.2021.11.16.17.46.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 16 Nov 2021 17:46:25 -0800 (PST)
Message-ID: <02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
Date: Tue, 16 Nov 2021 17:46:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
In-Reply-To: <8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBHb29kIGFmdGVybm9vbiBvciBnb29kIGV2ZW5pbmcgb3Igd2hhdGV2ZXIgdGltZSBp
dCBpcyB3aGVyZXZlciB5b3UgCmFyZSByZWFkaW5nIHRoaXMuIE15IHN1YmplY3QgbGluZSBwcmV0
dHkgbXVjaCBzYXlzIGV2ZXJ5dGhpbmcgdGhlcmUgaXMgCnRvIHRoaXMgbWVzc2FnZS4gSSBhbSBs
b29raW5nIGZvciBpbmFwcHJvcHJpYXRlIExlbm5peCBkaXN0cmlidXRpb24gdG8gCnJ1biBpbiBh
IHZpcnR1YWwgZW52aXJvbm1lbnQuIEZyb20gZXZlcnl0aGluZyBJIHRoaW5rIEkga25vdywgSSdt
IAp0aGlua2luZyB0aGUgYmVzdCBzb2x1dGlvbiBpcyBzb21ldGhpbmcgdGhhdCBjYW4gYmUgaW5z
dGFsbGVkIGVhc2lseSwgCmFuZCBhbGxvdyBtZSB0byBpbnN0YWxsIG9yY2EgcmVhbGx5IHF1aWNr
bHkgaWYgbm90IGRvIGl0IGluIHRoZSBzYW1lIAppbnN0YWxsLiBBbnkgZ29vZCBzdWdnZXN0aW9u
cz8gSSBkbyBoYXZlIGFjY2VzcyB0byBhIEZlZG9yYSBjb3JlIElTTyAKaW1hZ2UgYnV0IEknbSBq
dXN0IHdvbmRlcmluZyBpZiB0aGVyZSdzIHNvbWV0aGluZyBiZXR0ZXIgb3Igd2lsbCB0aGlzIGJl
IApzdWZmaWNpZW50PyBMb29raW5nIGZvcndhcmQgdG8gcmVhZGlnIHJlc3BvbnNlIHdha2UgdXAg
dG8gbXkgcXVlc3Rpb24uCgoKUGxlYXNlIGJlIGF3YXJlIHRoYXQgSSBhbSBkaWN0YXRpbmcgdGhp
cyB0byB0aGUgY29tcHV0ZXIgYW5kIFdpbmRvd3MuIEkgCmFtIHVzaW5nIGRpY3RhdGlvbiBzb2Z0
d2FyZSBiZWNhdXNlIG9mIGFuIGFkZGl0aW9uYWwgZGlzYWJpbGl0eS4gSWYgCnRoZXJlJ3Mgc29t
ZXRoaW5nIHRoYXQgSSd2ZSB3cml0dGVuIGFib3V0IHRoYXQgeW91IHRydWx5IGRvIG5vdCAKdW5k
ZXJzdGFuZCwgcGxlYXNlIHdyaXRlIG1lIGFuZCBhc2tlZCBtZSB3aGF0IEkgbWF5IGhhdmUgbWVh
bnQuIEkgdGhhbmsgCnlvdSBraW5kbHkgaW4gYWR2YW5jZSBmb3IgcmVhZGluZyB0aGlzLgoKCgpP
biAxMS8xNi8yMDIxIDM6MDYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4gVGhhbmsgeW91IERpZGllci1hbmQtS3lsZS4gSSB3aWxsIGNlcnRhaW5seSBydW4g
eW91ciBjb21tYW5kLCBidXQgZG8gSSAKPiBuZWVkIHRvIHVuIG1vdW50IGFueXRoaW5nPyBJIHdv
dWxkIGFsc28gZmlndXJlIEkgd291bGQgYmUgc2l0dGluZyAKPiBvdXRzaWRlIG9mIHRoYXQgbWRl
aWEgZGlyZWN0b3J5PyBPLWFuZC15ZXMsIERpZGllciwgaXQgaXMgdmZhdC4KPiBDaGltZQo+Cj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

