Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF244BAF2B
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 02:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645148201;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uz7GygAd2fnm5zs7DPwzE8cB8lpRZuvLxAA3xDHriH0=;
	b=X7QMkehRixTrYSPjwQGHkaR4s7ZiMRigRNbrCtchopntW1lpj22j3FTjCEig9u3MjaQkqP
	LKmdPThoK4Ss+V+ircraw0j5EwhnN0ioVG0zCXEoV8+TRZhaGe9zg4c22afwTCh9t+L3jZ
	R2RpUlNue91FjFWb5131DH5j0Wht9LM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-PUqZH7hAOOqRQUbVkFBLPQ-1; Thu, 17 Feb 2022 20:36:37 -0500
X-MC-Unique: PUqZH7hAOOqRQUbVkFBLPQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 15EB12F4A;
	Fri, 18 Feb 2022 01:36:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4641F5F70B;
	Fri, 18 Feb 2022 01:36:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9E91E4BB7B;
	Fri, 18 Feb 2022 01:36:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21I1aJCr014328 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 20:36:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 77928C15E71; Fri, 18 Feb 2022 01:36:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73176C27FA6
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 01:36:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A90D811E78
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 01:36:19 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-50-sudUtWmmOruKZkjyD6LLBQ-1; Thu, 17 Feb 2022 20:36:17 -0500
X-MC-Unique: sudUtWmmOruKZkjyD6LLBQ-1
Received: by mail-pj1-f50.google.com with SMTP id
	v13-20020a17090ac90d00b001b87bc106bdso10992890pjt.4
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 17:36:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=pP6A2ipczcXMTKpAEP2uX6IiTxEp52jBiQqAlP+XVKY=;
	b=EdQn99BavEFdXAzopb6cXDHJ7qsC5/zZcaM6AmEpzmahjhegxFs/Yur8qj/wqfVyk4
	7BpW9oATop1VMwB4R16K1t+nXmExDbIEopD4A/GZqSVUSc7+88fEinDJ/lS8HES24fbl
	EVaz+MpihX/DvzJyr5r1sAcONwKFyoBIGEN1HYUIYv2MIl3/KtZkDWzZrXsSNU/wFzIk
	fT0c01Hx/c2tmt7mG42b3o96sBKRAaG2+LPO3wpOAJxtHL0yD/7lHvjTCGSmgm7Ygeg/
	yCuhVYrXybQIY7A7MJYIgS7h/y3D2pdpAFYtE/64O1iB7pB3zZlNDxGYDzOyHKp3VMOU
	dlKg==
X-Gm-Message-State: AOAM532g9r91KBKyMdnTYR3pkS84LFxmMoEuQ2nnKVXeEQ1HahppSfkw
	po95RS81PfhMHRysEYE9IfSLsEusOuq/nw==
X-Google-Smtp-Source: ABdhPJxYIfqEXeCTG682I2GkDVOyzsNsHGgYIVqQsTrBp1dyzlZcdJw7y3gcSZnMGQtrJOxA9qjlUw==
X-Received: by 2002:a17:90a:6001:b0:1bb:83e8:1694 with SMTP id
	y1-20020a17090a600100b001bb83e81694mr10116380pji.127.1645148176076;
	Thu, 17 Feb 2022 17:36:16 -0800 (PST)
Received: from [10.200.1.221] ([103.233.155.116])
	by smtp.gmail.com with ESMTPSA id u4sm796758pfk.220.2022.02.17.17.36.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 17 Feb 2022 17:36:15 -0800 (PST)
Message-ID: <5b6b458c-2410-b30a-ae14-2f966df719d8@gmail.com>
Date: Fri, 18 Feb 2022 08:36:13 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui STS model data
To: blinux-list@redhat.com
References: <60d78e73-30de-c36a-482c-8ed70596bee3@gmail.com>
	<51cd92ef-5223-1114-3b18-b30c3182a118@gmail.com>
	<fb50c590-1e80-91d5-7021-5bad2fe196b6@protonmail.com>
In-Reply-To: <fb50c590-1e80-91d5-7021-5bad2fe196b6@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgUmFzdGlzbGF2LAoKVGhlIE5WaWRpYSBOZW1vIGlzIGluZGVlZCB2ZXJ5IGludGVyZXN0aW5n
LiBXaWxsIHRha2UgYW5vdGhlciBsb29rLgpJJ20gYWltaW5nIHRvIGNyZWF0ZSBzaW1wbGUgdm9p
Y2UgYXNzaXN0YW50IHByb2plY3QgaW4gbGludXguIFNpbWlsYXIgdG8gVm9pY2UgQXR0YWNrCgpo
dHRwczovL3ZvaWNlYXR0YWNrLmNvbS8KCk15IGZpcnN0IHJlc2VhcmNoIGxlYWQgbWUgdG8gRGVl
cFNwZWVjaCBidXQgaXQgYXBwZWFycyBpdCBpcyBubyBsb25nZXIgYWN0aXZlbHkgZGV2ZWxvcGVk
IGFuZCBDb3F1aSBpcyBjb250aW51YXRpb24gb2YgRFMuIEknbGwgY2hlY2sgb3V0IE5lbW8gYW5k
IGNvbXBhcmUgd2hpY2ggb25lIGlzIHN1aXRlZCBmb3IgbXkgcHJvamVjdC4KUmVhbGx5IGFwcHJl
Y2lhdGUgdGhlIHRpcHMuCgpUaGFua3MKCk9uIDIvMTgvMjIgMDI6MDUsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGVsbG8sCj4KPiB3aGVuIGl0IGNvbWVzIHRv
IFNUVCwgdGhlcmUgYXJlIG11bHRpcGxlIHJlYWxseSBpbnRlcmVzdGluZyBvcGVuLXNvdXJjZQo+
IHByb2plY3RzIGdvaW5nIG9uLgo+Cj4KPiBhc2lkZSBDb3F1aSBTVFQsIHRoZXJlIGFyZSBNb3pp
bGxhJ3MgZGVlcCBzcGVlY2gsIFZvc2sgYW5kIE5WSURJQSdzIE5lbW8uCj4KPgo+IEkndmUgcmVh
ZCBhbiBhcnRpY2xlIHJlY2VudGx5Ogo+Cj4gaHR0cHM6Ly9tZWRpdW0uY29tL0BuaWNrLm5hZ2Fy
aS9jb21wYXJpbmctNC1wb3B1bGFyLW9wZW4tc291cmNlLXNwZWVjaC10by10ZXh0LW5ldXJhbC1u
ZXR3b3JrLW1vZGVscy05MjY3NmE5ZjkyNjUKPgo+Cj4gY29tcGFyaW5nIDQgcG9wdWxhciBPU1Mg
c3BlZWNoIHJlY29nbml0aW9uIGZyYW1ld29ya3MsIGFuZCBOZW1vIHdpdGgKPiBxdWFydHpOZXQg
Y2FtZSBvdXQgYXMgdGhlIGJlc3QgY2hvaWNlLgo+Cj4KPiAgIEZyb20gaXRzIHJlcG9zaXRvcnk6
Cj4KPiBodHRwczovL2dpdGh1Yi5jb20vTlZJRElBL05lTW8KPgo+Cj4gSXQgc2VlbXMgcmVhbGx5
IGludGVyZXN0aW5nLgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFzdGlzbGF2Cj4KPgo+IETF
iGEgMTMuIDIuIDIwMjIgbyAxNTowMyBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IG5hcMOtc2FsKGEpOgo+PiBBcHBhcmVudGx5IEkgbmVlZCB0byBsb29rIGEgYml0IGhhcmRlcsKg
IDopCj4+Cj4+Cj4+IEkgZmluZCB3b3JraW5nwqAgaW5zdHJ1Y3Rpb24gaGVyZQo+Pgo+PiBodHRw
czovL3BldGV3YXJkZW4uY29tLzIwMjEvMTIvMjcvaG93LXRvLWdldC1zdGFydGVkLXdpdGgtY29x
dWlzLW9wZW4tc291cmNlLW9uLWRldmljZS1zcGVlY2gtdG8tdGV4dC10b29sLyNjb250ZW50Cj4+
Cj4+IEFueXdheSB0aGVzZSBTVFMgaXMgbG9va2luZyBhd2Vzb21lLi4KPj4KPj4gUmVnYXJkcwo+
PiBPbiAyLzEzLzIyIDIwOjEwLCBFZGhvYXJpIFNldGl5b3NvIHdyb3RlOgo+Pj4gSGkgbGlzdCwK
Pj4+Cj4+Pgo+Pj4gSSB3YW50IHRvIGV4cGVyaW1lbnQgd2l0aCBDb3F1aSBTVFMgYW5kIG5lZWQg
c29tZSBhZHZpY2UuCj4+Pgo+Pj4gSSBkb3dubG9hZCBzYW1wbGUgY29kZSBmcm9tCj4+Pgo+Pj4g
LS0gaHR0cHM6Ly9naXRodWIuY29tL2NvcXVpLWFpL1NUVC1leGFtcGxlcwo+Pj4KPj4+IEZpcnN0
IEkgdHJpZWQgdGhlIHB5dGhvbiBtaWNfbWljX3ZhZF9zdHJlYW1pbmcvIGJ1dCB3aGVuIEkgcmFu
IGl0IEkndmUKPj4+IGxvc3QgYWxsIGF1ZGlvIGFuZCBjb250cm9sLiBJIGhhZCB0byBnbyB0byB0
dHkxIGFuZCByZWJvb3QgbXkgc3lzdGVtLgo+Pj4gQW5kIHRoZW4gdHJpZWQgdGhlIG5vZGVqc19t
aWNfdmFkX3N0cmVhbWluZy8KPj4+Cj4+PiBJdCBhc2tzIGZvciBtb2RlbCBkYXRhIHdoaWNoIEkg
dHJ5IHRvIGZldGNoIGZyb20KPj4+IGh0dHBzOi8vY29xdWkuYWkvZW5nbGlzaC9jb3F1aS92MS4w
LjAtZGlnaXRzCj4+Pgo+Pj4gSSBhbHJlYWR5IHVzZSBib3RoIG15IGVtYWlsIGFkZHJlc3MgYW5k
IHN0aWxsIGdvdCBub3RoaW5nIGluIG15IGluYm94Lgo+Pj4KPj4+IENhbiBhbnlvbmUgY2FuIHNo
ZWQgbGlnaHQgb24gd2hhdCB0byBkbz8KPj4+IEknZCBhcHByZWNpYXRlIGFueSBoZWxwLgo+Pj4K
Pj4+IEJlc3QgUmVnYXJkcwo+Pj4KPj4+Cj4+PiBFZGhvYXJpIFNldGl5b3NvCj4+Pgo+PiAtLQo+
PiBFZGhvYXJpIFNldGl5b3NvCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKCi0tIApFZGhvYXJpIFNldGl5b3NvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

