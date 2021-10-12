Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 07481429CB3
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 06:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634013668;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=MGwbv7jH1/i5FK6MP6ARsORIW659MoGsttKqCdI0Oeg=;
	b=QwHcMkp8v3DuZu81pA/6EZ8BNTF98Gf81dtB/wDWb2ylZlsVfwQ8GmIEBfmkRZgfX5KQqM
	KLR9F+cQxQpTfeE9pG4j9Q9no9iQrEeEqax+QN4rntb44GO0LbJQLAMZwT0NlLMjhBwOre
	GkR51fOqIpfqCbXiZkuNp+YO0vqZOdo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-tVSDeMu7Mb-VxkX4yeosRA-1; Tue, 12 Oct 2021 00:41:03 -0400
X-MC-Unique: tVSDeMu7Mb-VxkX4yeosRA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C247F9126F;
	Tue, 12 Oct 2021 04:40:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0A7B68D7D;
	Tue, 12 Oct 2021 04:40:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D9F3F1809C84;
	Tue, 12 Oct 2021 04:40:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19C4eVEn003249 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 00:40:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0FE132166B2F; Tue, 12 Oct 2021 04:40:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AC862166B26
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:40:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E233185A794
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 04:40:28 +0000 (UTC)
Received: from sonic309-15.consmr.mail.bf2.yahoo.com
	(sonic309-15.consmr.mail.bf2.yahoo.com [74.6.129.125]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-430-neIw6-e3NtucLCfcrXPYLQ-1;
	Tue, 12 Oct 2021 00:40:26 -0400
X-MC-Unique: neIw6-e3NtucLCfcrXPYLQ-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1634013625; bh=vNLFF4RcTrDfKh2CxWy7wxlFazj+O4+f+hyVcRXoCCE=;
	h=X-Sonic-MF:From:Date:Subject:To:From:Subject;
	b=HtFRJza2ePYkczRIGArgDQQZB1n11a1z0RhxMEaxEaYsClYshtLybz6qd81qgC36Ns2yKGvbmhPwExvNnhY7QYIHoUXNUTUUVJU+ko9/qIA0ZjC1nRI/8gj8mKh4id9NRc/YhUJSq95s/IU6Kf/kZETuwcpttV30HPZ+rMVzUmI5wwqoTQ5GhStvawcjpzMQn7kCbWGG1Kj1Ehtl0U+uk4HWZJIlM6VXg8lJLdQt7iBzZxSuQkNptaRa1Xr4EyZLvqqZ117gWI8IkOXBK5HSpU5FCZkoL+CBhiqglvC+knOaE/QOoFnTLkOcY/cpRI3AXm7BxA1LluopHEwoufl9jg==
X-YMail-OSG: 031beiQVM1njHITFa_OpaCARLWCr6tU3pmFQD5opl3OCf4.qpgAHV1Ow1L9g38e
	SiKK5p2uGMP8d3Ky_DaQh35zORIsXwqKo4CLK2AtyKTAij4RdGFxIbu5t9kRK4CBpAX4RSO..8fY
	BZl44xwnYQnd_MTAxC9fwffXb9MjDO9rfkBFAbOXrprn15TNl.y_KMa5l_6QaI_3qQoxfK8RdmGQ
	z7PmTl2pfbeV1obAxXWC0xu1jIQFIUmXr44OxBS60URVyZ3YK7snrmr6JWMcWPa6ZSmZxd95o6mr
	65Wjxe66LgCi2IODDsAJIuEJV2zeX0o7FNuCRRKkC2A7YGIE6hA5b2BDbPKaIuEnz5GYkyDvNOhN
	7TuEd4TSzn5N1Co2iQ7y0BSlTHsfcs_qpGM7SLuKiu4B_dLcrjkx2cCoiq_d5mHvPZhbtK.3JO9T
	ML073AadxjYlKc9DH1TmrI2AzywUsgWZvh93mxAkSjGTIBUf4cslERdxCRi99_jxVP.6ITvWIvOw
	UVwX7ia43_wSopTwH4RaQqUuuJLp1fqBHeTd8gkBTgpTLge5AgdZdBT_.2WciVgJmWU1Lcrj_Twp
	1nS.i3n24tEcgQwOPUTXahNKXQxNrw0lP3Oid6ViQAdOCFx_sANDUvTCm3p_Go6L31_2vRItPpd1
	PDSXIoPhIR55NzqFIL53gbxJ8tRAOL35RqqBTaFMGB0WxqLZXsif4R1B4WQQvfOrwrbiFoLlQCgN
	qmzw8BPEKEPpuuUNoEwZOT_zC4BaP.hrDaE_BK0e9LVNQtd_DnltcpJMppYbHGCFO9Mc7E.JOWPW
	DcZsr2TklET9MhDZlyhdSWK7GLolGDBeOujxxV6IW__B_eVmO5rcU7Bb5UJeHYhVYYJJXMDcdBbw
	ki68ofU8g7kRUI3laY8h0PhGAEKoqEu8CeIGQKUJ8cJfCLlGKwGjKyekyT6DLl1_SjvXWsCDg5qV
	crsJtCFnEsCwnGPdiPScmY2v0GnsqGtSHlvOx7XfwQw1etjB18qRTIu7DGil.aD.kaxzuvkuw9QA
	mp4n9hh3gLdOFRHD9WLFsRict4RosUNbVzcrXzEFCNmIUsDcpHdRiAZ3Wq5X.j95KsAIbyCpDjiv
	m9lB1yRvU3l64NScEZMjwyaeDym0L2aK4gCtFj3swQz__fZDiepyQiT51XEspr7.hkUxPhGb6kEQ
	IlKX8G1.2uK8CiY2kZZSZgWIHKFKHUsV2xqCyMETauxFCNTPiDXo1MR9Bz6bFYp.6Fa2_RmG5hQm
	W77OqnjNKGq84FovsH30dlPbejMh1htXOMVHMiwDFZ2rLWEywBwYwyurVfk0J2dP3ADduIlczhps
	McwnhEFlBGe6HSoMskqiEvTsGFCBiOUBn7IS2LYmuz3KVyqLnx6bXu2ECc6Ny88l5z4gj8BKIcgz
	W6cXOrnBEOL4iGOtxn01i9VK7S2FW9esHMJHPFn8RHwDD9CWeXKt_Lu4NQy5.gqMowinKsGgSOcg
	6iqQNN6SkHs9m4HLRe2EDzb2r.eyn36G5O6kKA6ZgxYhGvY_ln8N5j9FZkQdYjcMn2IPUCj.od5C
	Gv69WiZ7DSNq.N2fKOIewNZ1l67XgA8CaxehRrHnjA8M40v9zeSW2UNklupOOsKbByT7igI2Sg8q
	Z8qiNzLhubVjM0QPA3iRMbH9OCICaJDBI9zqNTwXYxq3dnd_6LZdqof_qyQF2rdIYn1ysS_POVv7
	hGSXySrr0ytJ55DxWpHuo39umCEPaxJs9guKO1Dr9FTFBMaQX9SPeJrs3IXRL6Xrmx9TFZe7ttgp
	pxp33PNBhVAOME1kSd3mDTttvVQElgcVbh_HrNQVLdGggepmYNgR3Mmd3_snRjAbMabJA14N6.nl
	feYYCjjYxABwUAPgUstIzD4wSkKczC80dmQ369r239GXQyK9OT.peAfmEX4GtOx_RPIYbOAHxe.q
	MwezjZLyb5gaYw.dsCn0io5EyHLd1Aasu0BIK8tIpshISNUcbhws5L.Zc1_r0Hhy1VbiKKGOKCc4
	BKxxh2gaTF4WBjyjZrHHWRASS8scdDqEE20wVE1VsbRCAgftOjrZuxuD0gLs5LqEKWQKdaEmiYL5
	qXGaFuTQQNcof2Vz6JosNjmugfR7W0kMBwate2hvRgwencL9lzWIHpOeyDnmei0TOC1D8guqJ6kl
	47.HjZCG.GCT_rySZ.BHMUz4mw5ZoYtTNPw3IZXqD3mIZphK5b0UR1zcfDIKZyRryI9zjznABdMt
	EsWwsFNg4BlATxe28fqyITB08.hcC6rTW0IHgFVhiWxdQcU9bSor20B63tRaX51QB7Q--
X-Sonic-MF: <ashbreger@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic309.consmr.mail.bf2.yahoo.com with HTTP;
	Tue, 12 Oct 2021 04:40:25 +0000
Received: by kubenode534.mail-prod1.omega.ne1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID bf198ccd5f0b480304aff33d695bd164; 
	Tue, 12 Oct 2021 04:40:22 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Date: Mon, 11 Oct 2021 23:40:19 -0500
Subject: Any suggestions of what distro of Linux I should load onto a new
	computer?
Message-Id: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
To: Linux <blinux-list@redhat.com>
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19C4eVEn003249
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,
I was wondering if anyone had suggestions on what distro of Linux I should load onto a new computer? I will be using the computer for mainly school purposes to learn the OS.
Any help would be greatly appreciated.
Thanks,

Ashley


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

