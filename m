Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FFB6499E5
	for <lists+blinux-list@lfdr.de>; Mon, 12 Dec 2022 09:11:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670832668;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VhZydPVbR05XSSyEuC0z4LXxJOPAM98bA63Cgy2VdVM=;
	b=HTUiFXDHnZcYVyGD0n2DPeBZoK668u0DQ5tlmKhrkMgYtdWQyD2pNKrgczPActuZ4YtKfA
	Pl4VMlgE68WPeakgiIIRk3JDvlDqvcCy1iQoATcC3wIpOgOik/j/tMd0NQNN2L6yRsQJZY
	LTe1mDyjsaidVuemnm4dKXxkQLLy0F4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-Wh6YZD9ANP-R53ZyuhvR1w-1; Mon, 12 Dec 2022 03:11:05 -0500
X-MC-Unique: Wh6YZD9ANP-R53ZyuhvR1w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9922985A59D;
	Mon, 12 Dec 2022 08:11:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6D121175A2;
	Mon, 12 Dec 2022 08:10:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EB760194658F;
	Mon, 12 Dec 2022 08:10:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 12 Dec 2022 09:07:33 +0100
MIME-Version: 1.0
Subject: Re: bash script question
To: blinux-list@redhat.com
References: <mailman.1629.1670808097.7716.blinux-list@redhat.com>
 <mailman.1768.1670820740.7712.blinux-list@redhat.com>
In-Reply-To: <mailman.1768.1670820740.7712.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:eMiXYrZL8FI=;0pTOGjdx3Eq1XEENhlOD87bKdW1
 yl5VrXBmJ38GH4wEHMpsUS2WwklDlatDh1cnAgPr2fIZVSNGjQCQsi/Y4CHjS3LOzwbN1loaL
 K/hA3+rDTT1J8MePdGOFhMXhNyZJAZl58UGYxGo891RW+CVDNke1GXYXu1+SAmQhiG7wTR4rx
 DYEj79qzcg+mFN0ThUfo9UtpYzU6kiI49qn1YhWuymVhQqnE4hTatU6KM+InKdNZctSuNzwU9
 SQBlkmnA10LW8gnObD+VCEru0fMtO0Plk1naW+vDtSameeRtYn7ZganrgFaMOHMEfnSGT5seo
 EVS3IMU3TTt/O5QmU7LTxurcIVhr+wesdKO7c/trJvSe5GeUxnQP0CB28H4Jqq/qD+ht9QT0h
 jc71EJg0PwRQ9fPRfAxbzjokBoVvoiajuPisH6vH85b2MVW1Rz7kVCUVizwZWVWIHOXJdowAR
 f71fPnDga7A+p6grYtgIBoutFqgom8Ik1zxvDXB4cRiowI+M1JFAzVqclQAANlOm+6MxVvcT1
 YBS8DG2ie1RY/SRlq8uceOWWYj5Uu8+8oDyoAZdA//DHZZtEPEAlA1QFphDCg6HxzmGJr9bMk
 /k6uP53m4yVZxogPwPUuvk4j2RDlQFXRnhGr1r+A6O7GuxfZag/2RRJ9b8NwF+vk+km1+8VLl
 GGlpxywqGNeiiFi8mIQJ+ZGi2uI0hUJXm2WAehHZkwZHJSJbA1Zzu6yr0AQqD4b/zgmFJvWB4
 YYPrCOFR/fgWUXCn+XnM4Rsz58iJPPJAgPuJDyBu9Qd2GIoEZlEsvl1FmziuRakNEjYRspbEA
 G7ki9AVJAVzoGqEgYvdOLQJV0OjGQvF5vHIFoRuMf8/xQnqonE911EVNsJ2FDkBuRTE/GjEB/
 fLcI1v2r2Q+I5gC4KIaUBJm/uUyPhD9+4hPgSO3n8c8/XdsUzdhe3628GwEpYGZjaAcwuKRLC
 lCnRug==
Message-ID: <mailman.1795.1670832655.7713.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW5saW5lIHBvc3Rpbmcgd2l0aCBzb21lIGFkZGl0aW9uYWwgcG9pbnRlcnMuCgpPbiAxMi8xMi8y
MiAwNTo1MiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiAjIS9i
aW4vYmFzaAo+Cj4gcXVpeigpIHsKCkkgd291bGQgdXNlICdsb2NhbCByZXNwb25zZScsIGluIHNo
ZWxsIHlvdSBuZWVkIHRvIGRlZmluZSB0aGUgc2NvcGUKeW91cnNlbGYuCgo+ICDCoCBlY2hvICJT
dGFydGluZyBxdWl6Li4uIgo+ICDCoCBlY2hvICJXaGF0IGlzIDIrMj8iCj4gIMKgIHJlYWQgcmVz
cG9uc2UKCllvdSBhcmUgdXNpbmcgcmVzcG9uc2UgdHdpY2UgaW4geW91ciBzY3JpcHQsIGdpdmVu
IHRoYXQgdGhpcyBjb2RlIGlzIHRoZQpib2R5IG9mIGEgZnVuY3Rpb24gc2hvdWxkIHVzZSAnbG9j
YWwnIHRvIG1ha2UgaXQgb25seSB1c2FibGUgaW4gdGhlCmZ1bmN0aW9uIChmdW5jdGlvbiBzY29w
ZSkgYW5kIG5vdCBpbiBhbGwgb2YgeW91ciBzY3JpcHQgKGdsb2JhbCBzY29wZSkuCgo+ICDCoCBp
ZiBbICIkcmVzcG9uc2UiID09IDQgXQoKVGhpcyBpcyBhIGJhZCBwcmFjdGlzcyB0byB1c2UgJz09
JyBpbiBzaGVsbCB5b3UgY2FuIHVzZSBvbmUgKCdbCiIkcmVzcG9uc2UiID0gJzQnIF0nKQpHaXZl
biB0aGF0IHlvdSBhcmUgY29tcGFyaW5nIHR3byBzdHJpbmdzIHlvdSBzaG91bGQgYWxzbyBtYWtl
ICdmb3VyJyBhCnN0cmluZyEKCj4gIMKgIHRoZW4KPiAgwqDCoMKgIGVjaG8gIllvdSBnb3QgaXQu
Igo+ICDCoCBlbHNlCj4gIMKgwqDCoCBlY2hvICJUaGF0IGlzIGluY29ycmVjdC4iCj4gIMKgIGZp
Cj4gfQo+Cj4gdW50aWwgWyAiJHJlc3BvbnNlIiA9PSA0IF07IGRvCgpTYW1lIGFzIGFib3ZlLgoK
PiAgwqAgZWNobyAiQmVnaW4gbWF0aCBxdWl6PyAoeS9uKSIKPiAgwqAgcmVhZCByZXNwb25zZQo+
ICDCoCBpZiBbICIkcmVzcG9uc2UiID09ICJ5IiBdIHx8IFsgIiRyZXNwb25zZSIgPT0gIlkiIF0K
PiAgwqAgdGhlbgoKQSBtb3JlIHN0cmFpZ2h0Zm9yd2FyZCBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0
byB1c2UgYSBjYXNlIHN0YXRlbWVudC4KCj4gIMKgwqDCoCBTRUNPTkRTPTAKCldoeSBhcmUgeW91
IGNhcGl0YWxpemluZyB5b3VyIHZhcmlhYmxlPwoKPiAgwqDCoMKgIHF1aXoKPiAgwqDCoMKgIGVj
aG8gIlRoZSBxdWl6IHRvb2sgeW91ICRTRUNPTkRTIHNlY29uZHMgdG8gY29tcGxldGUuIgo+ICDC
oCBlbHNlCj4gIMKgwqDCoCBlY2hvICJFeGl0aW5nLi4uIgo+ICDCoMKgwqAgZXhpdAo+ICDCoCBm
aQo+IGRvbmUKPgpIVEguCgotLQpKb2huIERvZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo=

