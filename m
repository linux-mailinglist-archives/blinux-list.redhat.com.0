Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A168557EAE
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 17:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655998458;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p484Y+o/0YW2TlIU5PBH2JhSC7g3IbbyJjQpxoU4D3s=;
	b=P98IAuEfHG2X1jwJ5ZIGqkrSZluQzlzKSLsmaiOyZaPPyXCltaqh4bBexbgso+4DaLOJnQ
	iCVVXwUBILSIWQMDmMottgU5SCzH8I2G77RGEu9UX9oQl/3SDAPqS6dntAfkdHGm0bP1ix
	/ADTdPCvtkWTcq8lqXPjYssF/F1ddHw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-246-EpnVmXQ9NYeCoP0VwqL-SQ-1; Thu, 23 Jun 2022 11:34:14 -0400
X-MC-Unique: EpnVmXQ9NYeCoP0VwqL-SQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B31E803478;
	Thu, 23 Jun 2022 15:34:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 77CFC40CFD0B;
	Thu, 23 Jun 2022 15:34:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F1FFF194B95A;
	Thu, 23 Jun 2022 15:34:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Jun 2022 17:34:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: Thoughts on KDE Plasma as of right now
To: blinux-list@redhat.com
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
 <mailman.28082.1655981624.111205.blinux-list@redhat.com>
 <mailman.28290.1655982320.111204.blinux-list@redhat.com>
In-Reply-To: <mailman.28290.1655982320.111204.blinux-list@redhat.com>
Message-ID: <mailman.28639.1655998451.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgo+IEkgbWVhbiwgYWxsIEkgcmVhbGx5IG5lZWQgaXMgdGhlIGFwcHMgYmVpbmcgZml4
ZWQsIHRoaW5ncyBsaWtlIAo+IGtvbnNvbGUsIHRoZSB2YXJpb3VzIHdpbmRvd3MgYW5kIHByb2dy
YW1zIGFuZCBpdCdzIGRlZmluaXRlbHkgdXNlYWJsZS4gCj4gRG9scGhpbiBpcyBzdXJwcmlzaW5n
bHkgZ3JlYXQsIEkgd2VudCBpbiBleHBlY3Rpbmcgb2gsIGl0J2xsIGJlIGEgcGFpbiAKPiB0byB1
c2UuIAp5ZXMsIG1vc3QgYXBwcyBhbHJlYWR5IGdvdCB2ZXJ5IGJhc2ljIHN1cHBvcnQsIGJ1dCB0
aGlzIG5lZWRzIHRvIGJlIAppbXByb3ZlZCBhIGxvdC4gZmlyc3QgbGV0cyBmaXggdXAgbW9zdCB0
aGUgZGVza3RvcCByZWxhdGVkIGNvbXBvbmVudHMuIApLb25zb2xlIHNob3VsZCBoYXZlIGJhc2lj
IGFjY2Vzc2liaWxpdHkgc3VwcG9ydCBhcyB3ZWxsLiBidXQgaSB0aGluayB0aGUgCmhhbmRsaW5n
IGluIG9yY2EgdG8gVlRFIGlzIHZlcnkgc3BlY2lhbCBibGFjayBtYWdpYy4gdGhpcyBtaWdodCBu
ZWVkIHRvIApiZSBkb25lIGZvciBLb25zb2xlIGFzIHdlbGwuCnRoZSBzdXBwb3J0IGZvciBrb25z
b2xlIGlzIHRyYWNrZWQgYXQgdGhpcyB0YXNrOgpodHRwczovL3BoYWJyaWNhdG9yLmtkZS5vcmcv
VDEwMDk5Cmxhc3QgdGhpbmcgd2FzIFFUIHdhcyBtaXNzaW5nIHRoZSBUZXJtaW5hbCBhY2Nlc3Np
YmlsaXR5IHJvbGUuIHRoaXMgd2FzIAphZGRlZCB0aGVuIGJ5IGZyZWRlcmlrLiBzbyB0aGUgd29y
ayBjb3VsZCBoZXJlIGJlZWluZyBjb250aW51ZSBhcyB3ZWxsLgoKPiBUaGUgb25seSBzaG93IHN0
b3BwZXIgb3IgbWUsIGFuZCBJJ3ZlIG5vdCBmb3VuZCBhIHdvcmthcm91bmQgeWV0LCBpcyAKPiB0
aGF0IHRoZSBRVDUgd2luZG93cyBhbmQgcGFuZWxzIGRvIG5vdCByZWFkClFUNSB3aW5kb3dzIHNo
b3VsZCBiZSBhY2Nlc3NpYmxlIGJ5IGRlZmF1bHQuIHlvdSBtaWdodCBoYXZlIHRvIHNldCBhbiAK
ZW52aXJvbm1lbnQgdmFyaWFibGU6CnNldCB0aGlzIHRvIHlvdXIgfi8uYmFzaHJjIGZpbGUKZXhw
b3J0IFFUX0xJTlVYX0FDQ0VTU0lCSUxJVFlfQUxXQVlTX09OPTEgIyBmb3IgUVQ1IGFjY2Vzc2li
aWxpdHkKCmJ5IHRoZSB3YXksIGluIGxhdGVzdCBwbGFzbWEgNS4yNSB0aGVyZSBpcyBhIG5ldyBz
aG9ydGN1dCB0byBmb2N1cyBhbGwgCmF2YWlsYWJsZSBkZXNrdG9wIHBhbmVscyBNZXRhICsgQWx0
ICsgcCAoaXQgY3ljbGVzIGJldHdlZW4gYWxsIGF2YWlsYWJsZSAKZGVza3RvcCBwYW5lbHMgYW5k
IHRoZSBkZXNrdG9wIGl0c2VsZikuIHRoZSBkZXNrdG9wIHBhbmVsIGFuZCB0cmF5IGFyZWEgCmlz
IGFsc28gbm93IGtleWJvYXJkIG5hdmlnYXRlIGFibGUuIEJ1dCBzb21lIGFjY2Vzc2liaWxpdHkg
bGFiZWxzIGFyZSAKbWlzc2luZyBvciBjb3VsZMKgIGJlIGltcHJvdmVkLiB0aGlzIGlzIG5leHQg
b24gbXkgbGlzdC4KCmp1c3QgdG8gc2hhcmUgdGhlIGxhdGVzdCBsaW5rcyBpIHNlbmQgdG8gb3Jj
YSBsaXN0OgpteSBibG9nIHBvc3QgYWJvdXQgY3VycmVudCBLREUgYWNjZXNzaWJpbGl0eSB0ZWFt
IGVmZm9ydHM6Cmh0dHBzOi8vd3d3LnBhdHJlb24uY29tL3Bvc3RzLzY4MDc5NDY4CgpDYXJscyBj
dXJyZW50IHByb3Bvc2FsIHRvIGhhdmUgYWNjZXNzaWJpbGl0eSBhcyAzIHllYXIgZ29hbCAodGhp
cyBpcyBhIAp2b3RpbmcgcHJvY2Vzcyk6Cmh0dHBzOi8vcGhhYnJpY2F0b3Iua2RlLm9yZy9UMTU2
MTEKbXkgb2xkIHByb3Bvc2FsIGZyb20gMjAxOSB0byB0cnkgdG8gc2V0IGFjY2Vzc2liaWxpdHkg
YXMgS0RFIGdvYWwgKHNhZGx5IApub3Qgdm90ZWQpOgpodHRwczovL3BoYWJyaWNhdG9yLmtkZS5v
cmcvVDExMDc0CmxldHMgaG9wZSBhY2Nlc3NpYmlsaXR5IGlzIHNldCBhcyBLREUgZ29hbCBmb3Ig
bm93LiB0aGlzIHdvdWxkIGJlIGdyZWF0IAphbmQgd291bGQgZ2l2ZSB0aGF0IGEgbG90IG9mIGxv
dmUgYW5kIGF0dGVudGlvbi4KCmkgd2lsbCBkbyBhIGJhc2ljIHJldmlldyBvZiB0aGUgY3VycmVu
dCBzaXR1YXRpb24gYXQgd2Vla2VuZC4gZm9yIHRob3NlIAphcmUgY3VyaW91cyBhYm91dCBLREVz
IGFjY2Vzc2liaWxpdHkgc3RhdGUuCgpjaGVlcnMgY2hyeXMKQW0gMjMuMDYuMjIgdW0gMTM6MDUg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+IEkgbWVhbiwgYWxs
IEkgcmVhbGx5IG5lZWQgaXMgdGhlIGFwcHMgYmVpbmcgZml4ZWQsIHRoaW5ncyBsaWtlIAo+IGtv
bnNvbGUsIHRoZSB2YXJpb3VzIHdpbmRvd3MgYW5kIHByb2dyYW1zIGFuZCBpdCdzIGRlZmluaXRl
bHkgdXNlYWJsZS4gCj4gRG9scGhpbiBpcyBzdXJwcmlzaW5nbHkgZ3JlYXQsIEkgd2VudCBpbiBl
eHBlY3Rpbmcgb2gsIGl0J2xsIGJlIGEgcGFpbiAKPiB0byB1c2UuCj4KPiBObywgRG9scGhpbiB3
YXMgcXVpY2ssIHVzZWFibGUgYW5kIHJlc3BvbnNpdmUuIFRoZSBvbmx5IHNob3cgc3RvcHBlciAK
PiBvciBtZSwgYW5kIEkndmUgbm90IGZvdW5kIGEgd29ya2Fyb3VuZCB5ZXQsIGlzIHRoYXQgdGhl
IFFUNSB3aW5kb3dzIAo+IGFuZCBwYW5lbHMgZG8gbm90IHJlYWQsIHRoZSBpcm9ueSBvZiB0aGUg
YWNjZXNzaWJpbGl0eSBwYW5lbCBiZWluZyAKPiBpbmFjY2Vzc2libGUgaXMgbm90IGxvc3Qgb24g
bWUsIGJ1dCBJJ20gdGVtcHRlZCB0byBrZWVwIGl0IGFyb3VuZCB0byAKPiBzZWUgd2hlcmUgaXQg
Z29lcywgYW5kIGdpdmVuIHRoZSBTdGVhbSBEZWNrIHVzZXMgUGxhc21hIGxhc3QgSSAKPiBjaGVj
a2VkLCBoZXJlJ3MgaG9waW5nIGZvciBpbXByb3ZlbWVudHMgdGhhdCBnZXQgcG9ydGVkIHRoZXJl
IHRvbwo+Cj4gT24gNi8yMy8yMiAxMTo1MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4gWWVhaCwgSSd2ZSBub3QgdHJpZWQgaXQgaW4gbGlrZSBoYWxmIGEgeWVh
ciwgYnV0IHRoaXMgaGFzIHByb21wdGVkIG1lIHRvCj4+IGJlZ2luIGFzIGEgUGF0cm9uIHRvIGxp
bnV4LWFjY2Vzc2liaWxpdHkgYWdhaW4uIEp1c3QgJDE5IHBlciBtb250aCwgCj4+IGJ1dCBJCj4+
IGhvcGUgaXQgaGVscHMgZW50aHVzaWFzbSBhbmQgdG8ga2VlcCB1cCB0aGlzIHJlYWxseSBncmVh
dCB3b3JrIQo+PiBEZXZpbiBQcmF0ZXIKPj4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+Pgo+Pgo+
Pgo+Pgo+PiBPbiBUaHUsIEp1biAyMywgMjAyMiBhdCA1OjE4IEFNIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4K
Pj4+IFNvIGdpdmVuIHRoZSBuZXdzIGFib3V0IEtERSBhY2Nlc3NpYmlsaXR5IGdldHRpbmcgd29y
a2VkIG9uLCBJIGZpZ3VyZWQKPj4+IEknZCBnaXZlIEtERSBhIHNob3QuIEkgd2Fzbid0IHRoYXQg
aW1wcmVzc2VkIGxhc3QgdGltZS4KPj4+Cj4+PiBIb3dldmVyLiBJdCdzIGltcHJvdmVkIGEgbG90
LCBJIGNhbiBkbyBiYXNpYyB0aGluZ3MsIHdoaWNoIGlzIGEgYmlnIAo+Pj4gc3RlcAo+Pj4gdXAs
IGFuZCBJIGdldCB0YWxraW5nIGFwcCBsYXVuY2hlcnMsIGFuZCBjYW4gZG8gZW1haWwsIHdlYiBi
cm93c2luZyBhbmQKPj4+IHRleHQgZWRpdGluZyB3aGljaCBpcyBhIGJpZywgYmlnIHBsdXMuCj4+
Pgo+Pj4KPj4+IFRoYXQgYmVpbmcgc2FpZCwgSSBzdGlsbCBjYW5ub3QgY2hhbmdlIHN5c3RlbSBz
ZXR0aW5ncyBvciBkZWZhdWx0IGFwcHMKPj4+IGxpa2UgSSBjYW4gb24sIHNheSwgTWF0ZSBidXQs
IGFuZCBoZXJlJ3MgdGhlIHRoaW5nIEkgbGlrZSBhYm91dCBLREUKPj4+IFBsYXNtYSBhcyBvZiB3
cml0aW5nIHRoaXMuLi4KPj4+Cj4+Pgo+Pj4gSXQgaXMgZmFzdCwgaXQsIG9uIG15IEFyY2ggYm94
LCBzbyBZTU1WIG9uIG90aGVyIE9TZXMsIGJ1dCBJJ20gcnVubmluZwo+Pj4gdGhpcyBvbiBteSBB
cmNoIGJveCwgdGhlIHRoaW5nIEkgbGlrZSBhYm91dCBpdCBpcyB0aGUga2V5Ym9hcmQgY29tbWFu
ZHMKPj4+IG1ha2Ugc2Vuc2UuCj4+Pgo+Pj4gTm93LCBpZiBJIGNhbiBqdXN0IHdvcmsgb24gYWRk
aW5nIGEgc2hvcnRjdXQgdGhhdCBkb2Vzbid0IHJlcXVpcmUgbWUgdG8KPj4+IGdvIGFuZCBmaWdo
dCB3aXRoIGEgd2luZG93IHRoYXQgd29uJ3QgcmVhZCwgdGhhdCdkIGJlIGdvb2QuIFBsYXNtYSBp
cwo+Pj4gcGxlYXNlbnRseSBzdXJwcmlzaW5nIGFuZCB3b3J0aCBjaGVja2luZyBpbiBvbi4KPj4+
Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+
Pgo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

