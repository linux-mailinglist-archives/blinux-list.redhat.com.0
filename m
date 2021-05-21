Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E73A638C5E8
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 13:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621597414;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9PGL5qPtN3pv6AWtmmHZ9hW3Z6rb7tqHVvDiUuUnwM8=;
	b=gMUiCk5nB/hKu8hFqe5hXwwpfjvxre8NJLQJBddEzh9wpPALE34OBnPuySPsyZXb9tYv01
	ocTT+GPW46wQ3R9qRlgU+ihq6cCX2aBDHlvr7jD7vnypKSd4hEB2ndc949OuRkEuepZbpY
	FLN8mdPLEcUFeGgrXhHaWc1IKORrIuk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-112-jKT0gz1sO6OrH1_nqdVcyQ-1; Fri, 21 May 2021 07:43:31 -0400
X-MC-Unique: jKT0gz1sO6OrH1_nqdVcyQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B96D98A9F49;
	Fri, 21 May 2021 11:43:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A43B362467;
	Fri, 21 May 2021 11:43:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 846361801028;
	Fri, 21 May 2021 11:43:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LBhOAQ024115 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 07:43:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A3A9C210FE2E; Fri, 21 May 2021 11:43:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EE5B2102B9D
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:43:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E372101A531
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:43:21 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-84-n6h4gp8ROMqO3KEwHlX5kw-1; Fri, 21 May 2021 07:43:19 -0400
X-MC-Unique: n6h4gp8ROMqO3KEwHlX5kw-1
Received: by mail-wr1-f44.google.com with SMTP id y14so18683722wrm.13
	for <blinux-list@redhat.com>; Fri, 21 May 2021 04:43:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=8h2PcssUdJGP3Pm79luGkArD2ZggQTQRGzvqfRZDapQ=;
	b=ZigrsQyREZ0aqqcGqYjz0WqFKPa0QuSfI62G99c17iNNr+zF7z7gPaDEivejoWc+J8
	diu/TppGtcrDSLgnbxPhYyipghE/bXwoGcf0NcnyWUy4+9qdBXjLaH9yjgu38Aw+F7uj
	3cxn3XMvoCogZ1tznlGxxTu+dCkXlRa4PHniTBRqzxKR3PmR+VdUNieIGtDzK0TrYKDy
	Cq2DzbQ4GEmHJc2odQEbV+bcgEYNRSzowVi2FcGq1/0712tztZJ1qn1K1A7ovFrN5SB3
	qAq8wAqUsSnbXdfZVOx/jXo03Nhaf5DMf3/MRuonWVWuDLYKP3KsyI21Y4Y7kWK0xuuq
	Jzvg==
X-Gm-Message-State: AOAM533iC7ooqkvrk4f77D2b+EJvCO4g5ZV0PwLcldwkv0UZGNcETGP8
	q3PvjUQ/Aaa8PiIGiSvy4ye/50863i6bMg==
X-Google-Smtp-Source: ABdhPJz6eh8FuUIatNlO7JxZvxrmc76QbAf8EPCnbBmoFAxHpmRY1J502IIHR4teuV/yMVC0Xp+MJQ==
X-Received: by 2002:adf:f80f:: with SMTP id s15mr9095059wrp.341.1621597397939; 
	Fri, 21 May 2021 04:43:17 -0700 (PDT)
Received: from [192.168.1.8] (net-2-44-25-150.cust.vodafonedsl.it.
	[2.44.25.150]) by smtp.gmail.com with ESMTPSA id
	n15sm1842936wrr.20.2021.05.21.04.43.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 May 2021 04:43:17 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
	<889d2b70-ee26-f08c-1850-95e31065788a@linux-a11y.org>
Message-ID: <a23f506a-4ff2-ed28-590b-28a21ccc0b3b@gmail.com>
Date: Fri, 21 May 2021 13:43:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <889d2b70-ee26-f08c-1850-95e31065788a@linux-a11y.org>
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

SGVsbG8gdGhlcmUsCgoKU29ycnksIG15IGJhZCwgaSBmb3Jnb3QgdG8gbWVudGlvbiB0aGF0IEkg
aGFkIGFscmVhZHkgaW5zdGFsbGVkIGl0IExPTCEgCm15IGFwb2xvZ2llcyEgSSBpbnN0YWxsZWQg
aXQgYXBwZW5kaW5nIGl0IHRvIHBhY3N0cmFwIHdoZW4gaW5zdGFsbGluZyBBcmNoLgoKQmVzdCBy
ZWdhcmRzLgoKRnJhbmNpc2NvLgoKT24gNS8yMS8yMSAxOjQxIFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+Cj4gd2VsbCByZW1vdmluZyBlc3Bl
YWsgaXMgbm90IHRoZSBwb2ludCA6KSwgaW5zdGFsbGluZyBlc3BlYWstbmcgd2FzIHRoZSAKPiBt
YWluIHBvaW50Lgo+Cj4gQW0gMjEuMDUuMjEgdW0gMTM6Mzggc2NocmllYiBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+PiBIZWxsbyB0aGVyZSwKPj4KPj4KPj4gcmVtb3Zpbmcg
ZXNwZWFrIGRvZXNuJ3QgZml4IGl0LCB0aGUgc2FtZSBwcm9ibGVtIHN0aWxsIHBlcnNpc3RzLgo+
Pgo+PiBCZXN0IHJlZ2FyZHMuCj4+Cj4+IEZyYW5jaXNjby4KPj4KPj4KPj4gT24gNS8yMS8yMSAx
MjozNiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhv
d2R5Cj4+Pgo+Pj4+IEkgaGF2ZSBlc3BlYWssIHNveCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1
cyBwdWxzZWF1ZGlvLCAKPj4+PiBwdWxzZWF1ZGlvLWFsc2EsIGFsc2EtdXRpbHMgYW5kIHBsdWdp
bnMuIAo+Pj4gZXNwZWFrLW5nIGlzIHVzZWQgYnkgZGVmYXVsdCBpbnN0ZWFkIG9mIGVzcGVhay4g
ZXNwZWFrLW5nIGlzIHRoZSAKPj4+IHN1Y2Nlc3NvciBvZiBlc3BlYWsuIGRvIHRha2UgY2FyZSB0
byBub3QgaW5zdGFsbCBlc3BlYWsgYnV0IAo+Pj4gZXNwZWFrLW5nIGFuZCBnaXZlIGFub3RoZXIg
c2hvdCA6KS4KPj4+Cj4+Pgo+Pj4gQW0gMjEuMDUuMjEgdW0gMTE6NDcgc2NocmllYiBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Cj4+Pj4K
Pj4+PiBKdXN0IGZvciB0aGUgaGVjayBvZiBpdCwgSSByZWRpZCBhIGNsZWFuIGluc3RhbGwgb2Yg
YXJjaCB3aXRoIAo+Pj4+IHB1bHNlYXVkaW8gdGhpcyB0aW1lLCBhbmQgSSBjb25maWd1cmVkIGV2
ZXJ5dGhpbmcgSSBuZWVkZWQgcnVubmluZyAKPj4+PiB0aGUgc2ggc2NyaXB0IHlvdSBpbmRpY2F0
ZWQuCj4+Pj4KPj4+PiBJdCBoYWxmIHdvcmtzLCBhbmQgaGFsZiBkb2Vzbid0Lgo+Pj4+Cj4+Pj4g
V2hhdCBJIG1lYW4gYnkgdGhhdCBpcyB0aGF0IHdoZW4gSSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUs
IGp1c3QgYSAKPj4+PiBmZXcgc2Vjb25kcyBhZ28gYW5kIHJhbiBmZW5yaXIgYXMgc3Vkb2VyLCBp
dCBwbGF5ZWQgdGhlIHNvdW5kIGljb24sIAo+Pj4+IHRoaW5nIHRoYXQgd2l0aCBwaXBld2lyZSBk
aWRuJ3QgaGFwcGVuLCBidXQgZ2F2ZSBtZSBubyBzcGVlY2ggYXQgYWxsLgo+Pj4+Cj4+Pj4gSSBo
YXZlIGVzcGVhaywgc294LCBhbmQgeGNsaXAgaW5zdGFsbGVkLCBwbHVzIHB1bHNlYXVkaW8sIAo+
Pj4+IHB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPj4+Pgo+Pj4+IEFu
eSBzdWdnZXN0aW9ucz8KPj4+Pgo+Pj4+IFRoYW5rcyBhZ2Fpbi4KPj4+Pgo+Pj4+IEJlc3QgcmVn
YXJkcy4KPj4+Pgo+Pj4+IEZyYW5jaXNjby4KPj4+Pgo+Pj4+IE9uIDUvMTgvMjEgNTowNiBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gSG93ZHksCj4+
Pj4+Cj4+Pj4+IGRvIHlvdSBoYXZlIHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNv
dW5kIC8gdm9pY2UgZHJpdmVycyAKPj4+Pj4gaW5zdGFsbGVkPwo+Pj4+PiBUbyBnZXQgc3VyZSwg
cmVpbnN0YWxsIGl0IGV4ZWN1dGU6Cj4+Pj4+IHN1ZG8gcGFjbWFuIC1TIHNveCBlc3BlYWstbmcg
eGNsaXAKPj4+Pj4KPj4+Pj4gc294IGlzIHVzZWQgZm9yIHBsYXkgc291bmQsIGVzcGVhayBmb3Ig
dm9pY2Ugb3V0cHV0IGluIHRoZSBkZWZhdWx0IAo+Pj4+PiBjb25maWd1cmF0aW9uLCB4Y2xpcCBp
cyBhIGZ1bm55IHRveSB0byBsZXQgZmVucmlyIHNoYXJlIHRoZSAKPj4+Pj4gY2xpcGJvYXJkIGJl
dHdlZW4geW91ciBHVUkgYW5kIFRlcm1pbmFsLgo+Pj4+Pgo+Pj4+PiBzdGFydCBmZW5yaXIgZm9y
IHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyAKPj4+Pj4gQ1RS
TCArIEMKPj4+Pj4gc3VkbyBmZW5yaXIKPj4+Pj4KPj4+Pj4gZGlkIHlvdSBoZWFyIHRoZSBzdGFy
dHVwIHNvdW5kPyBmZW5yaXIgcGxheXMgYSBsaXR0bGUgc291bmRpY29uIGF0IAo+Pj4+PiBzdGFy
dHVwLgo+Pj4+Pgo+Pj4+PiBpZiBub3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3QgY29uZmlndXJl
ZC4KPj4+Pj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPj4+Pj4gIyBjb25maWd1cmUgdXNlcgo+Pj4+
PiAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gK
Pj4+Pj4gIyBjb25maWd1cmUgcm9vdAo+Pj4+PiBzdWRvIC91c3Ivc2hhcmUvZmVucmlyc2NyZWVu
cmVhZGVyL3Rvb2xzL2NvbmZpZ3VyZV9wdWxzZS5zaAo+Pj4+Pgo+Pj4+PiAjIG5lZWQgdG8gcmVz
dGFydCB0aGF0IHRoZSBjb25maWd1cmF0aW9uIGZvciBib3RoIGdldCBhY3RpdmUKPj4+Pj4KPj4+
Pj4gcmVzdGFydAo+Pj4+Pgo+Pj4+PiB0aGVuIHJldHJ5Cj4+Pj4+Cj4+Pj4+IHN1ZG8gZmVucmly
Cj4+Pj4+Cj4+Pj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVlZHMgYnkgZGVmYXVsdCB0byBydW4g
YXMgcm9vdCB0byBjb2xsZWN0IHRoZSAKPj4+Pj4gZGF0YSBvbiB5b3VyIHNjcmVlbiBvciBjYXB1
dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBpZiBmZW5yaXIgc3BlYWtzIAo+Pj4+PiBvciBjcmVhdGVz
IHNvdW5kLCBpdCBkb2VzIHRoaXMgYXMgcm9vdCB1c2VyLiB5b3Ugd29udCBoZWFyIHNvdW5kIAo+
Pj4+PiBvZiBhbiBvdGhlciB1c2VyIGJ5IHB1bHNlYXVkaW8gKHNvdW5kIHNlcnZlcikgZGVzaWdu
LiBXZSBuZWVkIHRvIAo+Pj4+PiB0cmFuc3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQgYXMgcm9vdCB0
byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlIAo+Pj4+PiBydW5uaW5nIGFzIHVzZXIgdG8gZmlu
YWxseSBoZWFyIHRoZSBzb3VuZC4KPj4+Pj4KPj4+Pj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0
cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSAKPj4+Pj4gYXVkaW8gdG8g
c2VuZCB0aGUgZGF0YSB0byB5b3VyIHVzZXIgYW5kIGNvbmZpZ3VyZSB1c2VyIHB1bHNlIGF1ZGlv
IAo+Pj4+PiB0byBsaXN0ZW4gdG8gdGhlIHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4K
Pj4+Pj4KPj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IDE4LjA1LjIxIHVtIDE0
OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4KPj4+
Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBUaGFua3Mgc28gbXVjaCwgbm93
LCB0aGF0IHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgc29sdmVkIQo+Pj4+Pj4KPj4+Pj4+IFRoZSBv
dGhlciBwYXJ0LCBob3cgZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0IGZlbnJpciAK
Pj4+Pj4+IGRvZXNuJ3Qgc3BlYWsgd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPj4+Pj4+Cj4+
Pj4+PiBEbyBJIGhhdmUgdG8gc2V0IHNvbWV0aGluZyBzb21ld2hlcmUgZm9yIHRoYXQgdG8gaGFw
cGVuPwo+Pj4+Pj4KPj4+Pj4+IFRoYW5rcyBhZ2Fpbi4KPj4+Pj4+Cj4+Pj4+PiBCZXN0IHJlZ2Fy
ZHMuCj4+Pj4+Pgo+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4KPj4+Pj4+IE9uIDUvMTgvMjEgMTA6
MjQgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4+Pj4g
SG93ZHkgRnJhbmNpc2NvLAo+Pj4+Pj4+Cj4+Pj4+Pj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxp
YnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5IGJ5IAo+Pj4+Pj4+IHB5dGhvbi1weWVuY2hhbnQgaWYg
dGhvc2UgYXJlIHNwcmVhZCB3YXJuaW5ncy4gTWF5YmUgdGhpcyBzaG91bGQgCj4+Pj4+Pj4gYmUg
cmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UgbWFpbnRhaW5lci4gQnV0IGFueXdheS4KPj4+Pj4+Pgo+
Pj4+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2thZ2UgY29udGFpbnMgdGhlIHNwZWNp
ZmljIGZpbGUgeW91IAo+Pj4+Pj4+IG5lZWQgYnkgInN1ZG8gcGFjbWFuIC1GeSBmaWxlbmFtZSIu
IGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIAo+Pj4+Pj4+IGV4YW1wbGUgaW4gbGlidm9ra28uc286
Cj4+Pj4+Pj4KPj4+Pj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8gcGFj
bWFuIC1GeSBsaWJ2b2lra28uc28KPj4+Pj4+PiBbc3Vkb10gUGFzc3dvcnQgZsO8ciBjaHJ5czoK
Pj4+Pj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4uCj4+Pj4+Pj4gwqBj
b3JlIDkwMyw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAgCj4+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyNdIAo+Pj4+Pj4+IDEwMCUKPj4+Pj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1pQi9zIDAw
OjAwIAo+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4+Pj4+PiAxMDAlCj4+Pj4+Pj4gwqBj
b21tdW5pdHkgMjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxIAo+Pj4+Pj4+IFsjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjXSAKPj4+Pj4+PiAxMDAlCj4+Pj4+Pj4gwqBtdWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4
IE1pQi9zIDAwOjAwIAo+Pj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4+Pj4+PiAxMDAlCj4+
Pj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPj4+Pj4+PiDCoMKgwqAgdXNyL2xpYi9saWJ2
b2lra28uc28KPj4+Pj4+PiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkCj4+Pj4+Pj4K
Pj4+Pj4+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28uc28gaXMgImxpYnZv
aWtrbyIKPj4+Pj4+PiB0byBzaWxlbmNlIG91dCBhbGwgdGhlIHdhcm5pbmdzIGRvIHRoaXM6Cj4+
Pj4+Pj4gc3VkbyBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4+Pj4+Pj4KPj4+
Pj4+PiB0aGlzIGluc3RhbGwgYWxsIDMgKElNTyBvcHRpb25hbCBkZXBlbmRlbmN5J3MsIHdoYXQg
c2hvdWxkIG5vdCAKPj4+Pj4+PiBjcmVhdGUgYSB3YXJuaW5nLCBidXQgd2VsbCwgaXQgaXMgbGlr
ZSBpdCBpcykKPj4+Pj4+Pgo+Pj4+Pj4+IGkgdXNlIGlyc3NpIGFzIElSQyAoY29tbWFuZGxpbmUp
IGNsaWVudC4gdGhlcmUgaXMgYWxzbyBQaWRnaW4gCj4+Pj4+Pj4gKGFzIGdyYXBoaWNhbCBjbGll
bnQpLiBib3RoIGFyZSB2ZXJ5IG5pY2UuCj4+Pj4+Pj4KPj4+Pj4+PiBsb29raW5nIGZvcndhcmQg
dG8gc2VlIHlvdSBpbiBJUkMgOikuCj4+Pj4+Pj4KPj4+Pj4+PiBjaGVlcnMgY2hyeXMKPj4+Pj4+
Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4+Pj4+PiBIZWxsbyB0aGVyZSwKPj4+Pj4+Pj4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gSSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJp
ZXMsIGJ1dCBub3QgdGhlIG90aGVyIAo+Pj4+Pj4+PiB0d28sIHNvIHRoYW5rcyBmb3IgdGhhdC4K
Pj4+Pj4+Pj4KPj4+Pj4+Pj4gQWxzbywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXks
IEkganVzdCBpbnN0YWxsZWQgaXQsIEkgCj4+Pj4+Pj4+IGRpZG4ndCBrbm93IHlhb3VydCB3YXMg
ZGVwcmVjYXRlZC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gTXkgcXVlc3Rpb24gbm93IGlzLCBhbmQgdGhp
cydsbCBiZSBkdW0sIHdoYXQgYXJlIHJlY29tbWVuZGVkIAo+Pj4+Pj4+PiBJUkMgY2xpZW50cz8g
aG93IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93IAo+Pj4+Pj4+PiBi
ZWZvcmUgam9pbmluZyBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4+
Pj4+Pgo+Pj4+Pj4+PiBUaGFua3MgYWdhaW4uCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJlc3QgcmVnYXJk
cy4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gRnJhbmNpc2NvLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiA1LzE3
LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
Pj4+Pj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdlIGludGVuZGVk
IHRvIGNocnlzIAo+Pj4+Pj4+Pj4gKEZlbnJpciBhdXRob3IpIG9uIHRoZSAjYTExeSBjaGFubmVs
IG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBNYXliZSBqb2luIGhp
bSB0aGVyZT8KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBEaWRpZXIKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBM
ZSAxNy8wNS8yMDIxIMOgIDIwOjE1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9u
IGEgCj4+Pj4+Pj4+PiDDqWNyaXTCoDoKPj4+Pj4+Pj4+PiBIZWxsbyBldmVyeW9uZSwKPj4+Pj4+
Pj4+Pgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gSSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBm
cm9tIHRoZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gV2hlbiBJIHRy
eSB0byBydW4gZmVucmlyIHdpdGggdGhlIGNvbW1hbmQKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IGZl
bnJpcgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIsIGkgZ2V0
IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+PiBbZnJhbmNpc2NvQEJsdWVibGluayB+XSQgZmVucmlyCj4+Pj4+Pj4+Pj4gKiog
KHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyAK
Pj4+Pj4+Pj4+PiBwbHVnaW46IGxpYmhzcGVsbC5zby4KPj4+Pj4+Pj4+PiAwOiBjYW5ub3Qgb3Bl
biBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4+Pj4+
PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2Fk
aW5nIAo+Pj4+Pj4+Pj4+IHBsdWdpbjogbGlidm9pa2tvLnNvLgo+Pj4+Pj4+Pj4+IDE6IGNhbm5v
dCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+
Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzc6IEVycm9y
IGxvYWRpbmcgCj4+Pj4+Pj4+Pj4gcGx1Z2luOiBsaWJudXNwZWxsLnNvCj4+Pj4+Pj4+Pj4gLjQ6
IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9y
eQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBBbnkgaWRlYXMgb24gaG93IHRvIGZp
eCBpdCwgYW5kIG5vIHNwZWVjaCBlaXRoZXIuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBUaGFuayB5
b3UgZm9yIGFueSBhbnN3ZXIuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBCZXN0IHJlZ2FyZHMuCj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBGcmFuY2lzY28uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPj4+Pj4+Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

