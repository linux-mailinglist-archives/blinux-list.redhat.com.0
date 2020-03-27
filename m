Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 5F7E2196050
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 22:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585343821;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=pMgex3K5Vr+0uB4yXgpfUXv9pZHVFp9Ixju7I8TIrEw=;
	b=R126TTDrjxFuV7qpry5iPjoALPXynOQrWXY1hGEd3tB2nYIwjsdC0gQ+cHfA5w/ShHgDVv
	nnB3ukuSgu2p0kBFYCNdZ2EPXFioOANx1SQbFpnArvkvy7h2D1hQC3C1wLbqlBvDlozV9T
	DMOjCP8Q11/OEEe95npkOvXEZg6xIys=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-60-5LGlsMhpNMWbAbdSuMrsDA-1; Fri, 27 Mar 2020 17:16:58 -0400
X-MC-Unique: 5LGlsMhpNMWbAbdSuMrsDA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AC3DD189F767;
	Fri, 27 Mar 2020 21:16:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90607100EBA4;
	Fri, 27 Mar 2020 21:16:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE16B18089CD;
	Fri, 27 Mar 2020 21:16:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RLGmYe022517 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 17:16:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1D0D72166B2B; Fri, 27 Mar 2020 21:16:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 198B52166B2C
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:16:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5B8A101A265
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 21:16:45 +0000 (UTC)
Received: from bilbo.visn.co.uk (bilbo.visn.co.uk [193.254.210.60]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-sRWqK_QANIO5G62Rp9SSfw-1; Fri, 27 Mar 2020 17:16:43 -0400
X-MC-Unique: sRWqK_QANIO5G62Rp9SSfw-1
Received: from cpc121376-wals12-2-0-cust281.16-1.cable.virginm.net
	([77.100.81.26]:1110 helo=bobsh23aug09)
	by bilbo.visn.co.uk with esmtpa (Exim 4.93)
	(envelope-from <robh@apearl.net>) id 1jHwLK-00A7lp-0k
	for blinux-list@redhat.com; Fri, 27 Mar 2020 21:16:42 +0000
Message-ID: <AA5C9E7D46DD479397E7FC88B654B5F9@bobsh23aug09>
To: <blinux-list@redhat.com>
References: <CAO2sX317wcDpD8e3OWg7_5UvxMWND7urVtyok-9i9Q=PBBZCFg@mail.gmail.com>
	<20200327192532.120f151d@telaviv1.shlomifish.org>
Subject: Re: Convert unwrapped paragraphs to hard wrapped paragraphs
	whenthere's no blank lines.
Date: Fri, 27 Mar 2020 21:16:45 -0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5579
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - bilbo.visn.co.uk
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - apearl.net
X-Get-Message-Sender-Via: bilbo.visn.co.uk: authenticated_id:
	robh+apearl.net/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: bilbo.visn.co.uk: robh@apearl.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RLGmYe022517
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnR3OiAgSSB0aGluayBQcm9qZWN0IEd1dGVuYmVyZyBzdGlsbCBleGlzdHMgYW5kIHRoZXkgZGlk
IHRvbnMgb2YgLnR4dCBhbmQgCndlbGwtZm9ybWF0dGVkIGFzIGEgcnVsZSwgIHRob3VnaCBtaWxl
cyBvZiBoZWFkZXIgbWF0ZXJpYWwgdG8gd2FkZSB0aHJvdWdoLgoKLS0tLS0gT3JpZ2luYWwgTWVz
c2FnZSAtLS0tLSAKRnJvbTogIkxpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24iIDxi
bGludXgtbGlzdEByZWRoYXQuY29tPgpUbzogIkxpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24iIDxibGludXgtbGlzdEByZWRoYXQuY29tPgpTZW50OiBGcmlkYXksIE1hcmNoIDI3LCAy
MDIwIDQ6MjUgUE0KU3ViamVjdDogUmU6IENvbnZlcnQgdW53cmFwcGVkIHBhcmFncmFwaHMgdG8g
aGFyZCB3cmFwcGVkIHBhcmFncmFwaHMgCndoZW50aGVyZSdzIG5vIGJsYW5rIGxpbmVzLgoKCkhp
LAoKT24gRnJpLCAyNyBNYXIgMjAyMCAxNTozMDoyOSArMDAwMApMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gT2theSwg
dGhpcyBpc24ndCBzdHJpY3RseSBhbiBhY2Nlc3NpYmlsaXR5IHF1ZXN0aW9uLCBidXQgSSBjYW4n
dCB0aGluawo+IG9mIGFueSBiZXR0ZXIgcGxhY2UgdG8gYXNrIGFuZCBHb29nbGUgZGlkbid0IGhl
bHAgbXVjaC4KPgo+IEkgb2NjYXNpb25hbGx5IHB1cmNoYXNlIGVCb29rcyBmcm9tIFNtYXNoIFdv
cmRzIGFzIHRoZXkncmUgdGhlIG9ubHkKPiBlQm9vayBTdG9yZSBJIGtub3cgb2YgdGhhdCBvZmZl
cnMgcGxhaW4gdGV4dCBhbG9uZyBzaWRlIHRoZSBmYXIgdG9vCj4gcHJldmFsZW50IGZvciBteSBs
aWtpbmcgUERGLCBlUHViLCBhbmQgS2luZGxlIGZvcm1hdHMuCj4KPiBQcm9ibGVtIGlzLCB0aGVp
ciBwbGFpbiB0ZXh0IGVCb29rcyBhcmUgdHlwaWNhbGx5IGxvbmcgZW5vdWdoIEZpcmVmb3gKPiBh
bmQgT3JjYSBzaW1wbHkgY2hva2Ugb24gdGhlbSBhbmQgdGhleSBoYXZlIHBhcmFncmFwaHMgdGhh
dCBhcmUKPiB1bndyYXBwZWQsIHdoaWNoIG1ha2VzIHJlYWRpbmcgdGhlbSB3aXRoIG5hbm8gYW5k
IFNCTCBjdW1iZXJzb21lLgo+IE5vcm1hbGx5LCBJJ2QganVzdCB1c2UgbmFubydzIGp1c3RpZnkg
Y29tbWFuZCB0byBoYXJkIHdyYXAgdGhld2hvbGUKPiBmaWxlLCBidXQgdGhleSBsYWNrIGJsYW5r
IGxpbmVzIGJldHdlZW4gcGFyYWdyYXBocywgc28gTmFubyB3b3VsZAo+IHRoaW5rIHRoZSB3aG9s
ZSBib29rIGEgc2luZ2xlIHBhcmFncmFwaC4KPgo+IFNvLCBkb2VzIGFueW9uZSBrbm93IGEgd2F5
IHRvIGF1dG9tYXRlIGluc2VydGluZyBibGFuayBsaW5lcyBiZWZvcmUKPiBhbmQgYWZ0ZXIgZWFj
aCBsaW5lIGluIGEgZmlsZSB0aGF0J3MgdG9vIGxvbmcgdG8gZml0IG9uIHRoZSBzY3JlZW4gYWxs
Cj4gYXQgb25jZSBhbmQgdGhlbiBoYXJkIHdyYXAgdGhvc2UgbG9uZyBsaW5lcz8KPgoKSSBkb24n
dCB1bmRlcnN0YW5kIGhvdyBwYXJhZ3JhcGhzIHN0YXJ0IGFuZCBlbmQgaW4gdGhlc2UgZmlsZXMu
IE90aGVyd2lzZSAKeW91CmNhbiB0cnkgdXNpbmcgb25lIG9mIHRoZSB0ZXh0IHByb2Nlc3Npbmcg
dG9vbHMgbWVudGlvbmVkIGhlcmU6CgoqIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL29wZW4t
c291cmNlL3Jlc291cmNlcy90ZXh0LXByb2Nlc3NpbmctdG9vbHMvCgoqIGh0dHBzOi8vd3d3LmNv
bXB1dGVyaG9wZS5jb20vdW5peC91Zm9sZC5odG0KCiogaHR0cHM6Ly9lbi53aWtpcGVkaWEub3Jn
L3dpa2kvRm10XyhVbml4KQoKKiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9QYXJfKGNv
bW1hbmQpCgpOb3RlIHRoYXQgeW91IG1heSBoYXZlIGJldHRlciBsdWNrIGNvbnZlcnRpbmcgRVBV
QnMgKGFzc3VtaW5nIHRoZXkgbGFjawpodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9EaWdp
dGFsX3JpZ2h0c19tYW5hZ2VtZW50ICkgdG8gcGxhaW50ZXh0IHVzaW5nCnRvb2xzIHN1Y2ggYXMg
aHR0cHM6Ly9wYW5kb2Mub3JnLyAsCmh0dHBzOi8vbWV0YWNwYW4ub3JnL3NlYXJjaD9xPWh0bWwl
M0ElM0F3aWtpY29udmVydGVyJnNpemU9MjAgLCBldGMuCgpSZWdhcmRzLAoKU2hsb21pIEZpc2gK
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCgotLSAKClNo
bG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnLwpodHRwczovL2lzLmdk
L01RSFZGMyAtIFRoZSBBdG9tIFRleHQgRWRpdG9yIGVkaXRzIGEgMiwwMDAsMDAxQiBmaWxlCgpS
ZWFsIHByb2dyYW1tZXJzIHVzZSBhIG5pY2UgZWRpdG9yIGFuZCBhIG5pY2UgcHJvZ3JhbW1pbmcg
bGFuZ3VhZ2UgYW5kIGdldCAKaXQKZG9uZSBpbiBsZXNzIHRoYW4gTyhOISkuCiAgICDigJQgdmFu
Z3VhcmQgb24gRnJlZW5vZGXigJlzICMjcHJvZ3JhbW1pbmcKClBsZWFzZSByZXBseSB0byBsaXN0
IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHA6Ly9zaGxvbS5pbi9yZXBseSAuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0IAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

