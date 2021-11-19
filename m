Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 597A84579A9
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637365205;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m8DWY5CFC6y/zDBd6onwnqLxkOjoPTiphXvhwIv0Efk=;
	b=KmWDLaHNSp4NltvHjO+HkB0lNOPjRt5lcWY4IVyUIfzqU7sUYUl/Y7T7xNsnCSKx1JAdg+
	kB3C+ALVjzviTnNNbT9S5MRxrKZAeSyfHu6eh6OxT/GkWulrgS7zjqwl4rE9RCSnjxkQ2C
	oEs7bhMTj6tEoPMI2jVZ04Qf3L36hP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-rpTE3MVaPfeJZWF1xQZItA-1; Fri, 19 Nov 2021 18:40:01 -0500
X-MC-Unique: rpTE3MVaPfeJZWF1xQZItA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07EC38799E0;
	Fri, 19 Nov 2021 23:39:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E49EC5F4EA;
	Fri, 19 Nov 2021 23:39:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD2A71832E81;
	Fri, 19 Nov 2021 23:39:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJNbTON028398 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:37:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DAFAA4010FE9; Fri, 19 Nov 2021 23:37:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6089400DFBC
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:37:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BCFC4811E8D
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:37:29 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-32-Fd3v9bOvNiGzVrA_yteVmQ-1; Fri, 19 Nov 2021 18:37:28 -0500
X-MC-Unique: Fd3v9bOvNiGzVrA_yteVmQ-1
Received: by mail-qt1-f178.google.com with SMTP id q14so10999399qtx.10
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 15:37:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=UcYDx91yKZNbD1hDo7MjMK3+MLYym89Zf3wkskWo7cA=;
	b=Mp4qYHQH/b13zR6pCkb3pdg+YIjMXY70NnDTNo5BT/lz6UNzuzXdZG0wiMmY8d86Fk
	Lt1ERMs78XEeP3V1OFqCr2lV+Lrv+bPn3/hvUt1luaYzMbyL6sColI1c3Dkw7cGEJuTC
	YjvdQV8yBjDKNIgyaHg1HPixAVx0HLy36/xPtLsYV3WCTLyDxCYpHHzJpl2v71zvAmYN
	CQl0fqPb8YCOGA/bXU6GeHe2/zSl3gUtP9u01/EvCNeG14Ke9qVCO3OuY4ol/xjyQUI8
	mVws6VF2XprCRLMQTVOC7+Fu7TS7Vnp1nXJIAfXHYMWktdc3KQZPaaxu2hCYt3JBe/DG
	AZBw==
X-Gm-Message-State: AOAM531ywEXZxZyLTBOcRTcyYObUq6Z92ye2eeKoBlPFQbDLQ0aX7lNC
	wLIMNzEjCOvybwEIQGu7GKcgs+rXsdFB/xoN
X-Google-Smtp-Source: ABdhPJzMqs7uU+3d78k35Be0w/YEbyFI2b3MyAD+tKsdqOjSi0IT2ZLQNlhORcDxpFgF+met9k4n/w==
X-Received: by 2002:a05:622a:5cf:: with SMTP id
	d15mr10628208qtb.388.1637365047265; 
	Fri, 19 Nov 2021 15:37:27 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:4ca7:17ab:ba25:ff5a?
	([2601:152:4000:330:4ca7:17ab:ba25:ff5a])
	by smtp.gmail.com with ESMTPSA id s20sm630877qtc.75.2021.11.19.15.37.25
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 15:37:26 -0800 (PST)
Message-ID: <8129c699-92c6-a1cd-cc9d-ca383ff3999e@gmail.com>
Date: Fri, 19 Nov 2021 18:37:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.2
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
	<7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
	<fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
	<5f7fb95f-74a0-6a95-bf96-d933e513c814@gmail.com>
	<4d0aaf05-9983-fc2f-20a2-633b7bd58928@slint.fr>
In-Reply-To: <4d0aaf05-9983-fc2f-20a2-633b7bd58928@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKSG93IGRvIHlvdSBkbyB0aGF0PyBJIGhhdmUgbm8gaWRlYSB3aGF0IHlvdSBt
ZWFudC4gQ2FuIHlvdSBnaXZlIG1lIG1vcmUgCmluZm9ybWF0aW9uPwoKCkNoZWVycywKCklicmFo
aW0KCk9uIDExLzE5LzIwMjEgNzowNSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiBIaSBJYnJhaGltLAo+Cj4gTWF5YmUgeW91IGNhbiBtYWtlIHRoZSBuZWVk
ZWQgY2hhbmdlcyBmcm9tIHRoZSBTbGludCBpbnN0YWxsZXIsIGlmIHRoZSAKPiBmaXJtd2FyZSBi
b290cyBhdXRvbWF0aWNhbGx5IGZyb20gYSBwbHVnZ2VkLWluIFVTQiBzdGljay4KPgo+IENoZWVy
cywKPiBEaWRpZXIKPgo+IExlIDE5LzExLzIwMjEgw6AgMjM6NDUsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSXQgYWxyZWFkeSBpbnN0YWxsZWQgaXQg
dG8gdGhlIHN5c3RlbSBpbnRlcm5hbCBkcml2ZSwgdW5mb3J0dW5hdGVseS4gCj4+IFRoZSBxdWVz
dGlvbiBpcyBob3cgdG8gZ2V0IHJlZCBvZiBpdC4gSSB3aWxsIGhhdmUgdG8gZ2V0IG9uZSBvZiBt
eSAKPj4gc2lnaHRlZCBmcmllbmRzIHRvIHJlc2V0IG15IGJvb3QgdXAgb3B0aW9ucyB0byBkZWZh
dWx0Lgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IElicmFoaW0KPj4KPj4gT24gMTEvMTkvMjAyMSA0OjUz
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gVGhlIGJv
b3Rsb2FkZXIgY2hlY2tib3ggaXMgaW4gdGhlIGRpc2sgY29uZmlndXJhdGlvbi4gSSdsbCBoYXZl
IHRvIAo+Pj4gbG9vayBhdCBpdCBhZ2FpbiB0byBiZSBzdXJlLCBidXQgaWYgSSByZW1lbWJlciBj
b3JyZWN0bHksIGl0J3MgaW4gCj4+PiB0aGUgd2luZG93IHRoYXQgcG9wcyB1cCB3aGVuIHlvdSBz
ZWxlY3QgdGhlIGRpc2sgd2hlcmUgeW91J3JlIAo+Pj4gaW5zdGFsbGluZyB0aGUgT1MuIEFjdHVh
bGx5LCBJIHRoaW5rIGl0J3MgYSBidXR0b24gb3Igc29tZSBzdWNoIHRoYXQgCj4+PiBzYXlzICJk
byBub3QgaW5zdGFsbCBib290bG9hZGVyLCIgYnV0IGFnYWluLCBJJ2xsIGhhdmUgdG8gbG9vayBh
dCBpdCAKPj4+IGFnYWluLiBJIGRvIGtub3cgdGhlcmUgaXMgYSB3YXkgdG8ga2VlcCBpdCBmcm9t
IGluc3RhbGxpbmcgdGhlIAo+Pj4gYm9vdGxvYWRlciwgYXMgd2VsbCBhcyBhIHdheSB0byBpbnN0
YWxsIHRvIGEgZGlmZmVyZW50IGRpc2suIEJ5IAo+Pj4gZGVmYXVsdCwgaXQgaW5zdGFsbHMgdG8g
dGhlIHN5c3RlbSBpbnRlcm5hbCBkcml2ZSwgd2hpY2ggeW91IGRvIG5vdCAKPj4+IHdhbnQuCj4+
PiB+S3lsZQo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

