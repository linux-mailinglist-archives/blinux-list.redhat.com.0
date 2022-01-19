Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FE2493FA2
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 19:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642615702;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DKzaoET0jcpkKtpVfWwG78AHtIAlg26EMDHwrCFJIuM=;
	b=YGrcU7NdXIme+iu95oSUyodQw3pSU3TWFJ+Es3LUu0jMBofdWgiml6fJE7gy3dya9AJPXT
	/slvpfMNDX6K/MaHHLRw+O2ID9V5GZjFje3TORGiITTvHJBMkgXLnSPtLbSU6+tU3GQzvH
	BlU3nHYUHly6vYmg24WeN9HgOQt1DKU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-294-jcWKIQPCNtKIWtJzVCSuYQ-1; Wed, 19 Jan 2022 13:08:05 -0500
X-MC-Unique: jcWKIQPCNtKIWtJzVCSuYQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 952AD801B0F;
	Wed, 19 Jan 2022 18:08:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4615E7E8F7;
	Wed, 19 Jan 2022 18:08:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C04271809CB8;
	Wed, 19 Jan 2022 18:07:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JI7rwj017510 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 13:07:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 95407112131E; Wed, 19 Jan 2022 18:07:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 915761121314
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:07:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE9E6811E78
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:07:50 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-77-2JbPEuVSM4WLkB9nljuWXg-1; Wed, 19 Jan 2022 13:07:47 -0500
X-MC-Unique: 2JbPEuVSM4WLkB9nljuWXg-1
Received: by mail-pg1-f175.google.com with SMTP id q75so3338224pgq.5
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 10:07:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=0vAbiIMXXjK4veMUz0opmpbqN79dRqX/Mby8z0fJJKY=;
	b=v+oeoataBe19GK7//ODhCd+JDr9wNZyzLODIT8irANPV97CsyJihDynWJnQU9cQ1/s
	+e43Be9RuFjT7ed8MsA0SbRwsbhACvJtqvLmkYWLvy8Q8B2L3HyyVZ+5stYtJ1sTiDTD
	7RMoinQFwS88Lvy+Iihpwlytmk8JOeNkugj+gV0AJGAyWIT9/UWiu6tlO1qEj/u2FgIk
	Ump+5PhA8gcLtlyHwaifwZiqFUWHJTQ3UD58T/XKR+OJqK5InAfm/wLjaSIW3JF5gqCE
	TzPaRLRIE663DOI3Mv1TzP9QC56CwFqtoR1jbcslK88aiQTR87AlCxHlYUgAVkol6ze3
	xCNQ==
X-Gm-Message-State: AOAM533LtI/sZieR44BCbZziTTJjbOubFTDRgzH/Sa5pmyKgwMTOgPyo
	rDM9yES7+oIyvkMBqGlPH/iNzx04Ht71igJmWA4Cfq0d
X-Google-Smtp-Source: ABdhPJzBm3RMVIxGMx1nqV9DTFfQ0Ku4H5R/hWHlOBDEqO3v6tg9osQPSce1qjxkLh/QbFGWNdwj+6FnhfM9tqulrjY=
X-Received: by 2002:aa7:904e:0:b0:4bc:bdd5:f3d with SMTP id
	n14-20020aa7904e000000b004bcbdd50f3dmr31991351pfo.9.1642615666265;
	Wed, 19 Jan 2022 10:07:46 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:523:0:0:0:0 with HTTP; Wed, 19 Jan 2022 10:07:45
	-0800 (PST)
In-Reply-To: <68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
	<68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
Date: Wed, 19 Jan 2022 11:07:45 -0700
Message-ID: <CAM+Q2c4uqchNLEK8Y1a2Gcf_Uyw6+518je+w6G9PKh-wzwVe5g@mail.gmail.com>
Subject: Re: Getting Ready For linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20JI7rwj017510
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBidXQgdGhlcmUgbWF5IG5lZWQgdG8gYmUgYSBzZXR0aW5nIGluIGJpb3MgdG8gZW5hYmxl
IGl0LgoKT24gMS8xOS8yMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gSGkgSG93YXJkLAo+Cj4gdGhlIFNsaW50IFVT
QiBzdGljayBjb250YWlucyBhbGwgeW91IG5lZWQgdG8gaW5zdGFsbCBTbGludCwgbm90IGFuIGFs
cmVhZHkKPiBpbnN0YWxsZWQgc3lzdGVtLgo+Cj4gSW5zdHJ1Y3Rpb25zIGhlcmU6ICBodHRwczov
L3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI19zbGludF9pbnN0YWxsYXRpb24KPgo+IEkgc3Vn
Z2VzdCB0aGF0IHlvdSBjaG9vc2UgdGhlIEF1dG8gaW5zdGFsbGF0aW9uIG1vZGUsIGVhc2llciBm
b3IgYmVnaW5uZXJzLgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+Cj4gTGUgMTkvMDEvMjAyMiDDoCAx
ODoyNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+PiBU
aGFua3MgdG8gYWxsIHdobyBoYXZlIG1hZGUgc3VnZ2VzdGlvbnMuCj4+Cj4+IEZpcnN0OiBJIGRv
d25sb2FkZWQgdWJ1bnR1IGFuZCBmbGFzaGVkIGl0IHRvIGEgVVNCIHN0aWNrLgo+Pgo+PiBOZXh0
OiBJIGdvdCBteSBtaW5kIGNoYW5nZWQgKHByb2JhYmx5IGZvciB0aGUgbmJldHRlciksIHNvIEkg
ZG93bmxvYWRlZAo+PiBTbGluawo+PiBhbmQgZmxhc2hlZCBpdCB0byBhbm90aGVyIFVTQiBzdGlj
ay4KPj4KPj4gTm93IEkgaGF2ZSB0d28gVVNCIHN0aWNrcyB0aGF0IGVhY2ggY29udGFpbiBhIHZl
cnNpb24gb2YgbGludXguIEFzc3VtaW5nCj4+IEknbQo+PiBnb25uYSBnbyB3aXRoIFNsaW5udCwg
ZG8gSSBub3cgaGF2ZSBhIGJvb3RhYmxlIHdvcmtpbmcgY29weSBvZiBTbGludD/CoCBPcgo+PiBp
cwo+PiB0aGVyZSBtb3JlIHRvIGRvIGJlZm9yZSBJJ20gYWN0dWFsbHkgcnVubmluZyBsaW51eD8K
Pj4KPj4gVGhhbmtzIHN0aWxsIG1vcmUuCj4+Cj4+IEhvd2FyZAo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKLS0gClN1YnNjcmliZSB0byBhIFdvcmRQ
cmVzcyBmb3IgTmV3YmllcyBNYWlsaW5nIExpc3QgYnkgc2VuZGluZyBhIG1lc3NhZ2UgdG86Cndw
NG5ld2JzLXJlcXVlc3RAZnJlZWxpc3RzLm9yZyB3aXRoICdzdWJzY3JpYmUnIGluIHRoZSBTdWJq
ZWN0IGZpZWxkIE9SIGJ5CnZpc2l0aW5nIHRoZSBsaXN0IHBhZ2UgYXQgaHR0cDovL3d3dy5mcmVl
bGlzdHMub3JnL2xpc3Qvd3A0bmV3YnMKJiBjaGVjayBvdXQgbXkgc2l0ZXMgYXQgd3d3LmJyaWdo
dHN0YXJzd2ViLmNvbSAmIHd3dy5teXNpdGVzYmVlbmhhY2tlZC5jb20KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

