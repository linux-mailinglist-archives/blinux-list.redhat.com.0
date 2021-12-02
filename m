Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA73465F00
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 08:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638431694;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=86Wur+Pe31hZPB5QwSDZGmltjGDo58Q4Kb+AGeQ0HN4=;
	b=fCR3hLrSEkAfWe32uCeghcl090LIOHh1y6cl9d/TUPyywhKdCjxmao0fZ9srBlQ4kKK0HC
	S6NsuMoAVjnL7078JihCIa8NhCc/tuXdcIQdACAh8Ydx8k7jbqhb+sC1YIMRegMg6Ma/6H
	odYNNX9JEOhvxKAm85cMjDn2QjXTHcE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-422-NiTzRDlQNCONK9tyGODoXg-1; Thu, 02 Dec 2021 02:54:51 -0500
X-MC-Unique: NiTzRDlQNCONK9tyGODoXg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8493E36393;
	Thu,  2 Dec 2021 07:54:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0FCF60C05;
	Thu,  2 Dec 2021 07:54:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1A371809C89;
	Thu,  2 Dec 2021 07:54:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B27sB33025132 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 02:54:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6D1FF51DD; Thu,  2 Dec 2021 07:54:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67FB451DC
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 07:54:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2BB285A5A8
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 07:54:08 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-594-IZ8sgLk2OBe0gEFhSexLYQ-1; Thu, 02 Dec 2021 02:54:06 -0500
X-MC-Unique: IZ8sgLk2OBe0gEFhSexLYQ-1
Received: by mail-wr1-f47.google.com with SMTP id o13so57603122wrs.12
	for <blinux-list@redhat.com>; Wed, 01 Dec 2021 23:54:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=waXgC+NUEKrL9c0jDdw5L7GgEt/qj9s/3TNthmIIOeM=;
	b=R3Z55uNZDvi5bgOocQR+XhV/6oxJRyxlOoEctn0awFrXDPeQpml4RFfFc+gt3Lksj1
	dwVcOIYqQY7Z6uhKZspB2I1dWalH0jWxI7cFCOy45sZMrMYCLNXTgatuSX4Hw54lHOce
	tHqoZvRkDN0wIn3HdiHJIpk6PtsKoUFK+xXXuVI28TcDHU2yTd1RVzSWnAe6eFL6TFy4
	PtzLFqhixnp06czk6fEafmelN0xgKQ3rfkrcA6CaoD+7COtRVl02uiD1bhYgA9UvUIyY
	evWixM29TBtx+69ga6KDzzUSMauI6+85qKHaGOtv0S/vO1yoRDKqOppRnEJCozR0bB58
	dnNA==
X-Gm-Message-State: AOAM531ssLJgBbUPpUdkPiJGa3L2MtsFUrKVi7k+/EtGApXFTdX/pWLG
	OPGCTykIu1ncJAlbybWi+iaXsLZp2Tw=
X-Google-Smtp-Source: ABdhPJyOOK3IV31X+BaxGiT4s6CfzbKz6bEEN11oF+YEVgWXrCPEqjODFcLAPTR7oYVAivm6rYlNEg==
X-Received: by 2002:adf:ea8c:: with SMTP id s12mr12568474wrm.535.1638431644750;
	Wed, 01 Dec 2021 23:54:04 -0800 (PST)
Received: from smtpclient.apple ([197.184.182.55])
	by smtp.gmail.com with ESMTPSA id
	p12sm2217552wrr.10.2021.12.01.23.54.03 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 01 Dec 2021 23:54:04 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: My qemu error
Date: Thu, 2 Dec 2021 09:54:01 +0200
Message-Id: <6536D81F-215E-477E-944E-2556F5E2C34B@gmail.com>
References: <800e886c-c325-63eb-d698-73127b4e0568@gmail.com>
In-Reply-To: <800e886c-c325-63eb-d698-73127b4e0568@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B27sB33025132
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpUaGUgdGhpbmcgaXMsIEkgYWxyZWFkeSBoYXZlIGEgY29uZmlndXJlZCBXaW5kb3dzIFZN
IGZvciBxZW11LiBJIHdvdWxkIHByZWZlciBub3QgdG8gaGF2ZSB0byBzZXQgaXQgdXAgYWdhaW4g
ZnJvbSBzY3JhdGNoLgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiAwMiBEZWMgMjAyMSwgYXQg
MDI6MzQsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0FzIGFuIGFsdGVybmF0aXZlIHRoZXJlJ3MgdGhlIHF1
aWNrZW11IHByb2plY3QgdG9vLCBodHRwczovL2dpdGh1Yi5jb20vcXVpY2tlbXUtcHJvamVjdC9x
dWlja2VtdSB3aGljaCBjb21lcyB3aXRoIHNldmVyYWwgb3B0aW9ucyBvdXQgb2YgdGhlIGJveCBh
bmQgc2V0cyB1cCB0aGUgY29uZmlnIGZvciB5b3UsIGluY2x1ZGluZyBXaW4xMC8xMS4KPiAKPiBB
bGwgeW91IG5lZWQgaXMgcWVtdSBhbmQgaXRzIGRlcGVuZGFuY2llcyBpbnN0YWxsZWQgYW5kIHRv
IGRvIChmb3IgaW5zdGFuY2UgZm9yIEZlZG9yYSAzNCkgLi9xdWlja2dldCBGZWRvcmEgMzQKPiAK
PiAKPiBUaGF0J2xsIGRvd25sb2FkIEZlZG9yYSAzNCwgaXQgd29ya3MgdGhlIHNhbWUgZm9yIFdp
bjEwL1dpbjExIGFzIHdlbGwgYnV0IGZvciB0aGF0IHlvdSBuZWVkIGpkIGluc3RhbGxlZAo+IAo+
PiBPbiAxMi8yLzIxIDAxOjIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+PiBIaSBJYnJhaGltLAo+PiAKPj4gdGhpcyBpcyB0aGUgc2NyaXB0IEkgdXNlIHRvIHJ1
biBXaW5kb3dzLTEwLzExIGluIGEgUWVtdSBWTToKPj4gCj4+IHFlbXUtc3lzdGVtLXg4Nl82NCBc
Cj4+IC1jcHUgaG9zdCBcCj4+IC1lbmFibGUta3ZtIFwKPj4gLXNtcCAkKG5wcm9jKSBcCj4+IC1t
IDRHIFwKPj4gLWsgZnIgXAo+PiAtYm9vdCBvcmRlcj1jIFwKPj4gLWJvb3QgbWVudT1vbiBcCj4+
IC1kZXZpY2UgaW50ZWwtaGRhIFwKPj4gLWRldmljZSBoZGEtZHVwbGV4IFwKPj4gLWRpc3BsYXkg
Z3RrIFwKPj4gLXZnYSBzdGQgXAo+PiAtZGV2aWNlIHVzYi1laGNpLGlkPWVoY2kgIFwKPj4gLWRy
aXZlIGZpbGU9fi9xZW11L3dpbmRvd3MucWNvdzIsZm9ybWF0PXFjb3cyLG1lZGlhPWRpc2sKPj4g
Cj4+IE5vIGlkZWEgaWYgaXQgd2lsbCBoYXZlIHNvdW5kIGluIEZlZG9yYSwgdGhvdWdoLgo+PiAK
Pj4gQ2hlZXJzLAo+PiBEaWRpZXIKPj4gCj4+PiBMZSAwMS8xMi8yMDIxIMOgIDEwOjU0LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+IEhpIERpZGllciwK
Pj4+IAo+Pj4gCj4+PiBUaGVyZSB3ZXJlIHNvbWUgcGFja2FnZXMgbWlzc2luZywgd2hpY2ggSSBo
YXZlIG5vdyBpbnN0YWxsZWQuIEkgaW5zdGFsbGVkIHFlbXUta3ZtLCB2aXJ0LW1hbmFnZXIgYW5k
IHZpcnQtdmlld2VyLCB3aGljaCBkaWRuJ3QgaW5zdGFsbCBhbG9uZyB3aXRoIHRoZSBtYWluIHFl
bXUgcGFja2FnZS4KPj4+IAo+Pj4gCj4+PiBJIGFtIHN0aWxsIGhhdmluZyBpc3N1ZXMgd2l0aCB0
aGUgc291bmQgdGhpbmcgaG93ZXZlci4gSSBhbSBoZXNpdGFudCB0byB0cnkgYW5kIGZpeCB0aGUg
c2NyaXB0IG15c2VsZi4KPj4+IAo+Pj4gCj4+PiBXYXJtIHJlZ2FyZHMsCj4+PiAKPj4+IEJyYW5k
dCBTdGVlbmthbXAKPj4+IAo+Pj4gU2VudCBmcm9tIHRoZSBGZWRvcmEgbWFjaGluZSwgdXNpbmcg
VGh1bmRlcmJpcmQKPj4+IAo+Pj4gT24gMjAyMS8xMS8zMCAyMzoxMiwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIbyBCcmFuZHQsCj4+Pj4gCj4+Pj4gVGhp
cyBkb2VzIHRlbGwgaWYgdGhlIHN1cHBvcnQgZm9yIEtWTSBpcyBwcm9wZXJseSBjb25maWd1cmVk
IGluIHRoaXMga2VybmVsLgo+Pj4+IAo+Pj4+IHRvIGNoZWNrLCB5b3UgY2FuIGRvIHRoaXM6Cj4+
Pj4gCj4+Pj4gY3AgL3Byb2MvY29uZmlnLmd6IC90bXAKPj4+PiBjZCAvdG1wCj4+Pj4gZ3Vuemlw
IGNvbmZpZy5nego+Pj4+IHlvdSB3aWxsIGdldCBhIGZpbGUgbmFtZWQgY29uZmlnIHdpdGggY29u
ZmlndXJhdGlvbiBzZXR0aW5ncyBvZiB0aGUga2VybmVsCj4+Pj4gCj4+Pj4gWW91IGNhbiBkbyB0
aGUgc2FtZSB3aXRoIFNsaW50IGFuZCBjb21wYXJlLgo+Pj4+IAo+Pj4+IEFuZC9vciB1c2UgYSBG
ZWRvcmEgc3VwcG9ydCBjaGFubmVsLgo+Pj4+IAo+Pj4+IENoZWVycywKPj4+PiAKPj4+PiBEaWRp
ZXIKPj4+PiAKPj4+PiAKPj4+PiBMZSAzMC8xMS8yMDIxIMOgIDIxOjQzLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0IDoKPj4+Pj4gQXMgSSBzdGF0ZWQsIEknbSBy
dW5uaW5nIEZlZG9yYSBNYXRlIENvbXBpeiAzNSBhdCB0aGUgbW9tZW50LCBhbmQKPj4+Pj4gCj4+
Pj4+ICR1bmFtZSAtcgo+Pj4+PiAKPj4+Pj4gZ2l2ZXMgbWUgdGhlIGZvbGxvd2luZy4KPj4+Pj4g
Cj4+Pj4+IDUuMTUuNS0yMDAuZmMzNS54ODZfNjQKPj4+Pj4gCj4+Pj4+IAo+Pj4+PiBXYXJtIHJl
Z2FyZHMsCj4+Pj4+IAo+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Pj4+IAo+Pj4+PiBTZW50IGZy
b20gdGhlIEZlZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAo+Pj4+PiAKPj4+Pj4gT24g
MjAyMS8xMS8zMCAyMDowMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPj4+Pj4+IFBTIGluc3RlYWQgb2Y6Cj4+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0
LjEzCj4+Pj4+PiBwbGVhc2UgcmVhZDoKPj4+Pj4+IC9ib290L2NvbmZpZy1nZW5lcmljLTUuMTMu
MTMKPj4+Pj4+IAo+Pj4+Pj4gT1QgQm90aCB0aGUgNS4xMyBhbmQgNS4xNCBoYXZlIGJlZW4gZGVj
bGFyZWQgRW5kIG9mIExpZmUsIEkgd2lsbCBwcm92aWRlIGEKPj4+Pj4+IDUuMTUueiB3aGVuIEkg
d2lsbCB0aGluayB0aGlzIGJyYW5jaCBpcyBzdGFibGUgZW5vdWdoLgo+Pj4+Pj4gCj4+Pj4+PiBE
aWRpZXIKPj4+Pj4+IAo+Pj4+Pj4gTGUgMzAvMTEvMjAyMSDDoCAxODo0OSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4+Pj4gSGkgQnJhbmR0LAo+Pj4+
Pj4+IGFuc3dlcnMgaW5saW5lCj4+Pj4+Pj4gCj4+Pj4+Pj4gTGUgMzAvMTEvMjAyMSDDoCAxMzo1
NSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+Pj4+Pj4+
IHFlbXUtc3lzdGVtLXg4Nl82NDogd2FybmluZzogJy1zb3VuZGh3IGhkYScgaXMgZGVwcmVjYXRl
ZCwgcGxlYXNlIHVzZSAnLWRldmljZSBpbnRlbC1oZGEgLWRldmljZSBoZGEtZHVwbGV4JyBpbnN0
ZWFkCj4+Pj4+Pj4+IGF1ZGlvOiBEZXZpY2UgaGRhOiBhdWRpb2RldiBkZWZhdWx0IHBhcmFtZXRl
ciBpcyBkZXByZWNhdGVkLCBwbGVhc2Ugc3BlY2lmeSBhdWRpb2Rldj1wYQo+Pj4+Pj4+PiBhdWRp
bzogRGV2aWNlIGhkYTogYXVkaW9kZXYgZGVmYXVsdCBwYXJhbWV0ZXIgaXMgZGVwcmVjYXRlZCwg
cGxlYXNlIHNwZWNpZnkgYXVkaW9kZXY9cGEKPj4+Pj4+Pj4gCj4+Pj4+Pj4gSW4gdGhlIGNvbW1h
bmQgcmVtb3ZlCj4+Pj4+Pj4gLXNvdW5kaHcgaGRhCj4+Pj4+Pj4gd2hpY2ggaXMgcmVkdW5kYW50
IHdpdGgKPj4+Pj4+PiAtZGV2aWNlIGludGVsLWhkYSAtZGV2aWNlIGhkYS1kdXBsZXgKPj4+Pj4+
PiBhbmQgcHJvYmFseSByZXBjYWNlCj4+Pj4+Pj4gLS1hdWRpb2RldiBwYQo+Pj4+Pj4+IGJ5Ogo+
Pj4+Pj4+IC0tYXVkaW9kZXY9cGFob3dldmVyLCBtYXliZSB0aGlzIHdob2xlIHN0dWZmIGlzIG5v
dCBuZWNlc3Nhcnk6LWF1ZGlvZGV2IHBhLGlkPXBhLG91dC5taXhpbmctZW5naW5lPW9mZixvdXQu
bGF0ZW5jeT0yMDAwMAo+Pj4+Pj4+IEkgZG9uJ3QgaGF2ZSBpdC4KPj4+Pj4+PiAKPj4+Pj4+PiAg
PiAga25vdyBpdCBkb2VzIHdvcmsgdW5kZXIgU2xpbnQsIGJ1dCBub3QgdW5kZXIgRmVkb3JhLCBB
cmNoIG9yIFVidW50dS4KPj4+Pj4+PiAKPj4+Pj4+PiBNYXliZSB0aGUga2VybmVsIHlvdSBhcmUg
cnVubmluZyBpbiBGZWRvcmEsIEFyY2ggb3IgVWJ1bnR1IGRvZXMgbm90IGhhdmUgYQo+Pj4+Pj4+
IHByb3BlciBjb25maWd1cmF0aW9uIGZvciBLVk0sIHJlYWQ6Cj4+Pj4+Pj4gaHR0cHM6Ly93d3cu
bGludXgta3ZtLm9yZy9wYWdlL1R1bmluZ19LZXJuZWwKPj4+Pj4+PiAKPj4+Pj4+PiBJbiBTbGlu
dCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgZm91bmQgaW4gb25lIG9mIHRoZXNlIGZpbGVz
Ogo+Pj4+Pj4+IC9ib290L2NvbmZpZy1nZW5lcmljLTUuMTQuMTQueDY0Cj4+Pj4+Pj4gL2Jvb3Qv
Y29uZmlnLWdlbmVyaWMtNS4xNC4xMwo+Pj4+Pj4+IFRoZXNlIGNvbW1hbmRzOgo+Pj4+Pj4+IGNh
dCAvcHJvYy9jbWRsaW5lCj4+Pj4+Pj4gdW5hbWUgLXIKPj4+Pj4+PiB0ZWxsIHlvdSB3aGljaCBr
ZXJuZWwgaXMgcnVubmluZywgc28geW91IGtub3cgaG93IGl0IGlzIGNvbmZpZ3VyZWQuCj4+Pj4+
Pj4gCj4+Pj4+Pj4gQWxzbywgdGhlcmUgY291bGQgYmUgYW4gaXNzdWUgd2l0aCB5b3VyIHFlbXUg
dmVyc2lvbi4KPj4+Pj4+PiAKPj4+Pj4+PiBJbiBTbGludCBhdCB0aW1lIG9mIHdyaXRpbmc6Cj4+
Pj4+Pj4gZGFuY2Vbfl0kIHFlbXUtc3lzdGVtLXg4Nl82NCAtLXZlcnNpb24KPj4+Pj4+PiBRRU1V
IGVtdWxhdG9yIHZlcnNpb24gNi4wLjAKPj4+Pj4+PiBDb3B5cmlnaHQgKGMpIDIwMDMtMjAyMSBG
YWJyaWNlIEJlbGxhcmQgYW5kIHRoZSBRRU1VIFByb2plY3QgZGV2ZWxvcGVycwo+Pj4+Pj4+IAo+
Pj4+Pj4+IENoZWVycywKPj4+Pj4+PiBEaWRpZXIKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

