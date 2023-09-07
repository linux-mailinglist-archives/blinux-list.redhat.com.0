Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CE761797DE8
	for <lists+blinux-list@lfdr.de>; Thu,  7 Sep 2023 23:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694121890;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZwfpwFXVdA2M33iXBMsTWsViic9a0dBwBrhxIgMm0oA=;
	b=Q38CrgEUkIYTR5m11Q/Z5Gi7NcMmWulr8L2D1SpuIe4DlRrUheI3N8g5fY5Sd10N0wJFWt
	xLbZDXyrazYlrCA8+Q3BBtUkI4OyYJ5g9qQ+hBGBvZalXDTedXpqC5MrN6blrwc6qL/3ev
	r9x17vdqFQlGB4rOoQO7UKRYr6C+rMU=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-694-gKvD2udNMYSvI96MpR7UBQ-1; Thu, 07 Sep 2023 17:24:35 -0400
X-MC-Unique: gKvD2udNMYSvI96MpR7UBQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A24E3C0EACC;
	Thu,  7 Sep 2023 21:24:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 97EBAC03295;
	Thu,  7 Sep 2023 21:24:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E7DBB19465A2;
	Thu,  7 Sep 2023 21:24:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 07 Sep 2023 21:24:08 +0000
To: blinux-list@redhat.com
Subject: Re: RHVoice on Ubuntu
In-Reply-To: <mailman.1674.1694102204.353789.blinux-list@redhat.com>
References: <mailman.1674.1694102204.353789.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2096.1694121865.353793.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TmF2aWdhdGUgdG8gdGhlIGRpcmVjdG9yeSB3aGVyZSBzcGVlY2ggbW9kdWxlcyBhcmUgc3RvcmVk
OgoKY2QgL3Vzci9saWIvc3BlZWNoLWRpc3BhdGNoZXItbW9kdWxlcwoKCkZpcnN0LCBjaGVjayB2
aWEgbGwgdGhhdCBldmVyeW9uZSBjYW4gcnVuIHRoZSBtb2R1bGUgKEknbSBub3Qgc3VyZSB3aGF0
IApleGVjdXRhYmxlIG5hbWUgZG9lcyBSSCB2b2ljZSB1c2UsIGxldCdzIGNhbGwgaXQgc2Rfcmhf
dm9pY2UpOgoKbGwgfCBncmVwIHNkX3JoX3ZvaWNlCgoKVGhlcmUgc2hvdWxkIGJlIFRocmVlIHgg
c3ltYm9scyBpbiB0aGUgcGVybWlzc2lvbnMuCgoKTmV4dCwgcnVuIHRoZSBtb2R1bGU6CgouL3Nk
X3JoX3ZvaWNlCgoKVGhlcmUgc2hvdWxkIGJlIG5vIG91dHB1dC4gSWYgeW91IHNlZSBhbnkgZXJy
b3JzIGhlcmUsIHRoZXkncmUgbGlrZWx5IAp0aGUgY2F1c2Ugb2YgdGhlIHByb2JsZW0uCgoKSWYg
ZXZlcnl0aGluZyBnb2VzIHJpZ2h0LCBub3cgdGhlIHByb2dyYW0gc2hvdWxkIGJlIGV4cGVjdGlu
ZyBpbnB1dC4gCkluc2VydCB0aGUgZm9sbG93aW5nOgoKCklOSVQKTElTVCBWT0lDRVMKCgpZb3Ug
c2hvdWxkIGJlIHByZXNlbnRlZCB3aXRoIGEgdGFibGUgb2Ygc3VwcG9ydGVkIHZvaWNlcy4gQ2hv
b3NlIG9uZSAKKHRoaXMgaXMgYW4gZXhhbXBsZSBmcm9tIGVzcGVhayk6CgoKU0VUCmxhbmd1YWdl
PXNrCnZvaWNlPW1hbGUxCi4KCkFuZCBoYXZlIHRoZSBwcm9ncmFtIHNwZWFrIHNvbWV0aGluZzoK
CgpTUEVBSwoKYWhvagoKLgoKCkluIG9sZGVyIHZlcnNpb25zIG9mIHRoZSBwcm90b2NvbCwgdGhl
IHByb2dyYW0gd291bGQgc3RhcnQgc3BlYWtpbmcgCnJpZ2h0IGF3YXksIG5vdyB5b3UgcmVjZWl2
ZSB0aGUgYXVkaW8gaW4gYmluYXJ5IGZvcm1hdCB0byB0aGUgdGVybWluYWwsIAp0aGUgb3V0cHV0
IHNob3VsZCBiZSBmaW5pc2hlZCB3aXRoIDcwMiBFTkQKCgpGaW5pc2ggd2l0aCBRVUlUIGNvbW1h
bmQuCgoKQmVzdCByZWdhcmRzCgoKUmFzdGlzbGF2CgoKRMWIYSA3LiA5LiAyMDIzIG8gMTc6NTAg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPiBIaSBSYXN0
aXNsYXYsCj4KPiBob3cgY2FuIEkgZG8gdGhhdD8KPgo+IFRoYW5rcyBhIGxvdC4KPgo+IEJlc3Qg
cmVnYXJkcwo+Cj4gVm9qdGEuCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

