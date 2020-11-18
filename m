Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id DB3842B8283
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605718977;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CyJhGN+g9lGOIArqXWyl1twlWAHBi+i40rRXc1QaCVU=;
	b=LYjwDFYwghwv6hZ4l18xVeU55HepmxpziRtALxeLFBcTOICROqc7n/Ba9zunqetcdM2QLK
	/i2KrJ/gctYgymn/unq87HTRLGWFwc1hiyk1orlAJCGx+LJQHzf06GUB/pM3pQrCEWVR9f
	wwusl5yiG7lZY8+NQwya5W9Rdc3M0G0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-Fxcz3HZ6PNuNIby2C2y6bw-1; Wed, 18 Nov 2020 12:02:54 -0500
X-MC-Unique: Fxcz3HZ6PNuNIby2C2y6bw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BAA8108E1A2;
	Wed, 18 Nov 2020 17:02:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 794125C1A3;
	Wed, 18 Nov 2020 17:02:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28B8A86C09;
	Wed, 18 Nov 2020 17:02:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIH2a9G031318 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:02:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 02A4B945DA; Wed, 18 Nov 2020 17:02:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F136D8577A
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:02:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBF6E858F18
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:02:32 +0000 (UTC)
Received: from sonic312-21.consmr.mail.bf2.yahoo.com
	(sonic312-21.consmr.mail.bf2.yahoo.com [74.6.128.83]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-88-doYtKdtKNk2OlZj6oiUmWg-1;
	Wed, 18 Nov 2020 12:02:29 -0500
X-MC-Unique: doYtKdtKNk2OlZj6oiUmWg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1605718949; bh=62WHC2upj3dsle1CmgFtv44GmUKdc7CJ3OfxRtJp7Hh=;
	h=From:Subject:Date:To:From:Subject;
	b=eKb2JZyvVM5Rp3uYHB2113ZHv+RRq2Q5I8vp/McRhzoh1CJ87GNHrfd80cBgqvrS4nHl1J2LLlsM9BulJiAfAXIsVBqY2DgkNQmaZFevSn9QMsMOTdz8qPArf4yxy+N5z02yTBQRcN7RM9GCE0i10leiTOXDkvrS9FdEe8Hg2A9BehUxJeptfmZUW8FvgO6Kn1B/Mhg9d0ZNNynuj+XbZ8P/8HzpIy5eWT85fmMXhXs/ERjZYaWqOzAoG8mrvQwsXvPEvKk5HrHOxgqTALUA/be9ap0y7FfLPq9yHi4JY1J2gMEyi0bzGA+kexS8T8rqpv39NSh35JBJlv4tiEx4mg==
X-YMail-OSG: hLvsCyYVM1kEAEHTqQnGU8TXdzatZ8UsP1K.ZvwUiHwbnkwAOMAZeuTnuiJS1G7
	h5Ui4tjaddf8lqW0anVrQT.nhAQ563GGvIqnUs5T_EBGbOuMLcpeXdpblJ3Uz0HGeRBA8WdFvz9y
	0lA3FmYkNu8deoY9oCm0H8V5ZtcfW.sOvT8w075Kbi8qgiqaUPC34lR37ktFIJQDjrNeMk5xdqMh
	Gx0wY7wAY7g3HhMvA36wl8awRP22BLJCDMRGfX4aZ_A.Po5z40zqg6U9hRc7pN2K3SuOkx94hP0e
	N3VgSM1hNFiaDLPdq9ZyI_tQNxjYU8iJxO7EAJBAJnosan.7FogQrbBmxrQWnbcm3dWg.JcY.a8N
	rJnxTFg7t9Xx4UrSPay0_aImI77M0i0xC.l_I.DeX.qVRRFlie3FyzxWYUJJfaY4dsqwx9OkbeVJ
	MIjLJqHrOegLxhkmZTwj6LqZyUzm8kyUAcyWaJi4cxbMhaNxS.V4Uqz4QDAKoG13QpEpoAE6ZGRg
	QqT5gBbTC8B1kJWQxsuS53xYLcgV4EqbWrFtjwevMiTCJYUJgqtxrQ6jiOZcQNkI0UzKMEQCEbqu
	4rBuvPpdx8urtL_EqVjCR1JP78nrxxHtXo9kFrrgK34W_OzESTScuPKEojO1Ii8dB3pOQTCp2ZJ7
	d_yBSaeNJR0A4APVehPuwWG4U38fnYG4.mCHfx5I5kRLwbnn.3eZRVhrX8qWSSEYiO0lqGOMuKzx
	e90fClDb_E3WR1lMq6smnldT2Pa_KNrQcj2F32.xtFHl_ePglLvH3e5j8xqr0OyjBw3oohRHcgXx
	bJPnemk6kx1lHnOBQoJZHLwaWCczw4pE_5Q.KTMqJs6IaFshkL0o4nuK4V4.kT5ywKgiwy58N5FE
	f6LGjYLe76zU.Z0q08CVZODd34uwBmeSGU.Yexg9iN2TbZRK3jSLcSV7VSqJo6Pc22qnX7rUJfNI
	FAMuxQmJnwPXjzi_GeXGidzvkLggEMiY1OvJ.b9IWnYCUPZJ2sXKLVBsvpEBkJ9NSElTeO67FKJv
	mIh2.KLQoxufTuteQ5SYpLBtwlWlDPMhG3lUqd6PX_kjDH_2HgGSkNrh6NHh.wfJvg7CYWOoXpSg
	VIfaD5aNvryty9gYlCQR32fXdIKDT.K4Fr9R_41vLnDikslihwbVhNDK08oGX56zydq2eKXWPidW
	sFDZlOhKuPIf_izVY5at7rglrUr9VwNbGTg8CkCnN7UC5gx921RtUjy7q5a1YzHIDLqRofT5wYlI
	usSxlRBln0j4biMOoZpal8N_ldFxbdNZ1MIsopTref1rgPftS0oxtg.CaN23LMNaRDqK7taTgSp.
	fPuBCwBTstSr4sVpTn1OpdxPBEb47VQ85WpRjsugxO_cfeg.jhi8bRdX0x09ANsicwkEpIZvH_X7
	76j6IdoTplpnEKuMzja90UXJUbz6BB7FxsTddps8_FrZ23gUKxnYy71VUFwKYIP8l99l6HUCQYSC
	TKPOD4CfUDODUZ2yGVrVNMwNSQg83AkZfR_b8zT.b7iDWT3onql.FYqFu0mI22JRfw7C.ac.S6dM
	JTGuW7INFSXDRPNukopXX3QUUlf3q7x6V38fGtbi.0MbT7P8xa7zz79zToOrVJs4JamgNP9sTiCH
	6lRjLfy5S_o9vtmuaRqw0IJlblwc70FbScdZym5gGzr15Pc6hW8bs6cAZeymO6x5xGhqIAlfFgZ7
	NK.IzXuh5yasUrJeyo0.NRNCn_66pPJTBy6sbdQbWk6KQPhRzznHz_22H6hXY6Pc7QvYRV3tvTFs
	spihbkjfa93jZ8V7WN7MpfbVBzctdGOyPthiNnQnChKYEmMMb.Rdw1y_CCdla9w1TlSm.5ECqO_D
	e0hWA34DNZllUqAIWed.S7wGwO0xz0hVHIC_yc1sKD3pjwyAygSp1uyZapfiIKCtEuylpX2ecmdP
	XitNExloJ0S.MKDhE0V1MiUGwU_3pikk90Udyt.ZlUn5fdmb6DzjO1NEyHujNaW8.3og_pNgcHD4
	dd9XfnJWxUbVGp5YSXoqtg56yAhwO31RQ7nhVs03Y0xlT0grU6MZ3TqfT.3ewGyO7ptgjohCC2ch
	00P5IlZrlOpKlrv4mbW3YwpvIDQa5YQ1Fw7BN.a1SlDe3kU4KmHPJCnjH1etjDlxzLakjHOsslHR
	OcyCE7HLlnyc26XWuEpjnLlMPSpjmqIUfwDU7hZEF2wyBdfI4JLUfFyJbFfwXnYHIwh1mAkgNoRp
	agt.usDDBaxWX7uyk9_.y8lXL._b3_ar2ITY49nGsk3DSXy1Q_mIcxnxzbYVKI8koSPyKGznyYph
	2WJcUuiB8FVbk5eAWVyST5oHPeKz91K0-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic312.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 18 Nov 2020 17:02:29 +0000
Received: by smtp422.mail.ne1.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
	ID 5dc182d0a3ad446fba6b24c734f10d65; 
	Wed, 18 Nov 2020 17:02:24 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: Bratty
Date: Wed, 18 Nov 2020 11:02:23 -0600
Message-Id: <EB254B7E-C222-43D5-8013-975A985B90AE@yahoo.com>
References: <CAGJxbF4Wa5T8C8sbce0kNBreGUdz0EtmPWT4Y=zEHwR8-EVX+Q@mail.gmail.com>
In-Reply-To: <CAGJxbF4Wa5T8C8sbce0kNBreGUdz0EtmPWT4Y=zEHwR8-EVX+Q@mail.gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0AIH2a9G031318
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzIHRoYXTigJlzIHdoYXQgSSBtZWFudCB0byBzYXkuIEkgZ3Vlc3MgbXkgQXV0b0NvcnJlY3Qg
bXVzdOKAmXZlIGNoYW5nZWQgaXQuCgoKQXNobGV5IEJyZWdlcgoKPiBPbiBOb3YgMTgsIDIwMjAs
IGF0IDg6NDcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0RvIHlvdSBtZWFuIEJSTFRUWT8gSXQgc2hv
dWxkIGJlIGluIHlvdXIgZGlzdHJpYnV0aW9uJ3MgcGFja2FnZSBtYW5hZ2VyLgo+IERldmluIFBy
YXRlcgo+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPiAKPiAKPj4gT24gVHVlLCBOb3YgMTcsIDIw
MjAgYXQgMTE6MDMgUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+IGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiAKPj4gSGkgZ3V5cywKPj4gSSB3YXMgd29u
ZGVyaW5nIGlmIGFueW9uZSBrbmV3IGFueXRoaW5nIGFib3V0IHRoaXMgcHJvZ3JhbT8gSSBhbSB0
cnlpbmcgdG8KPj4gZG93bmxvYWQgaXQgZm9yIGEgY2xhc3MgdGhhdCBJIGFtIHRha2luZyBmb3Ig
c2Nob29sIGFuZCBJIGFtIGEgYml0Cj4+IGNvbmZ1c2VkLiBBbnkgaGVscCB3b3VsZCBiZSBncmVh
dGx5IGFwcHJlY2lhdGVkLgo+PiBUaGFua3MsCj4+IAo+PiAKPj4gQXNobGV5IEJyZWdlcgo+PiAK
Pj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0
dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93
d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

