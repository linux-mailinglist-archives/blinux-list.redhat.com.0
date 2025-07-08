Return-Path: <blinux-list+bncBDP7P6HU4IERBDXDWLBQMGQE7NF7YUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1EDAFC23E
	for <lists+blinux-list@lfdr.de>; Tue,  8 Jul 2025 07:50:08 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a585ad6726sf145772461cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 22:50:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751953807; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ar+rnUU2gbnNYJ2B5Nx30ZJn3H8d0q21fG13dCyRZ4VszS9f/+SwN/jdkg/I2I8sUN
         cnDpty51KDow2yJXfdHN6KPjXVPg1wNJR5gRBP4+J+2rMlryePP9ZFCT+jFOAYR11L76
         qNQEKTfvdRebUek3sxNrDyELmByBQDKxMrGo/8jy4bkdvmavBbVJqtpiC0J7+K2rqp8V
         MnWmbW5/vVpR6mWviJyzmm5W/zNxPTUozlKTLJiXqy3S4ls9KbY88CVnSThGogQi8+Z3
         FTilDTEFrt6vOwSaXOAzBlZLCizxnC/03lKuuUiGND1s6pijSlEjkyh0CxHJwHj90ru+
         2NQQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:message-id:subject:from:to:date
         :delivered-to:mime-version;
        bh=ViY6V46HW5uzFQBGG60B2lXmuGIYmWWNZ1DXL7lr4rM=;
        fh=oblzkHcv7enqZrsy70XYOVl8GvLt/PcpNrtiWr4uz3c=;
        b=llHLT54O0wL2qZRzg4ZO0cC1sn1UlhxR71sMN3NoF0VbLAP5VI7gkqIkvEk19uYUV6
         ihn23/kgvzUT95Ll7DDnKamuBBu9UIziPsvUqnt3q/5854Mq23iOpV/rl8rZZYsXesIQ
         lSQGD3b18a1WSQAGBCYZhridTsGCtQoYKHlIkbvxOt0CedFUSI7ciMdnf3qqKLkrkq2M
         fxTmYBeBysosouKozFuGhinSa3EsZ0I7AhbWlRYce8q15wx7SGJvpEyK4iQQ6rCyojab
         ez9r+pZolZ4aBfEXdB+EIHTv5FT0XUG7xS6SwkumXwGFO1Sc6M+XTXERN/yXy6CcSre1
         aeaw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=NWxGZe+l;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751953807; x=1752558607;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:message-id
         :subject:from:to:date:delivered-to:x-beenthere:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViY6V46HW5uzFQBGG60B2lXmuGIYmWWNZ1DXL7lr4rM=;
        b=CLS4hhpgXCR7P5+Ar8OYTrOd65Dr4meUx0iCv83JWkhmfxQNI19un9WsuGhtQJd6Ui
         gKhuRM12BqCUSwDIQ7mcqk7akFqEYND7lPWKGZO+TKRKwGPch34eQKxKXGbZQkG3Cd9B
         y2/YwOtt0y99NWx/XnRblXZxqtAsuLdYIFaM+5FeM+E4voJ4nll3VzXbiRilzv5iGu1u
         qRwmGDp05rD+CIVAxP91PXhzfA9pf9XGuMAyQfCdpFxnlvO9BPNrQk3uL91SqRaXzJ3u
         wfH3Gnrtuyc4Lwc7Uh6zLfhSNDVkiUzrb9eUAmTuDuLso9K5GsSP2bRCHx+KJl+YaMcx
         AsZw==
X-Forwarded-Encrypted: i=3; AJvYcCXBPJ1Y95P2NkhwvjaKdzsNo5wV9nfQQW7YKRYY2+LhPPqCh0On+a24qDOqgVj954OX0Ikc2w==@lfdr.de
X-Gm-Message-State: AOJu0Ywl8Cz+ShWKrfmPus9DN2UGOv34uzr5voMgpYk/Z5VN7orA71DS
	4RNMLORdxQABDTOEvLBnM2J3d7r0rDA0P9XdJT3XEWlBMxLux5ryf0HZ+fL4owdl9/E=
X-Google-Smtp-Source: AGHT+IHuQsqNhaBfBBOkLKqo68WpNc/V+jYrDyRqbXBj7CwyLeRvscl1vdrvMPfTq8ukCnrl3GzveQ==
X-Received: by 2002:a05:622a:5b08:b0:4a4:2e99:3a92 with SMTP id d75a77b69052e-4a9cc7f2200mr35812791cf.38.1751953807167;
        Mon, 07 Jul 2025 22:50:07 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdQ+48HumlpiUrA/CUeudPrKhmWrT4EvlyCvLNtSHHh1g==
Received: by 2002:a05:622a:580e:b0:4a5:acfb:3ebd with SMTP id
 d75a77b69052e-4a99be71abdls61104921cf.2.-pod-prod-04-us; Mon, 07 Jul 2025
 22:50:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVB928f01K1MXIRsMoVa4aUqqByXhS6UTqj/G19OYdwBICQFx23j8ln9auczCEFuxWKoqekXb8paOPXaA==@gapps.redhat.com
X-Received: by 2002:a05:622a:2e88:b0:4a9:cdc9:c169 with SMTP id d75a77b69052e-4a9cdc9c396mr29304611cf.44.1751953806075;
        Mon, 07 Jul 2025 22:50:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751953806; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ys6NllImqbYrEhOM0oVnDN/lCGYvR5kIT0J4vZHDG2+j2kt9xHrLpC04fI6zwyIbEu
         O78558gc5TtSlUVe6nnJb4/rEukBZzoRd/33c6mE1Ixi50ZpPZ1UYgrqmGAtaELM5MaP
         PuLQzJEZJqBe7vrovOpdD7eqJuZ/PQkwzrsmK7HWU40rDoYEC4dpognsP31GYs7elbK5
         GbJx818i6jzmNWicmR1JltI9bDjiail6yv1PtNvQJoJobnwNJomnGlHvCKDt9jHhiIqf
         XYf/XVwGcvp/XyoFJUFLIbBpGFq9WO/XuJ0h/Ry+fAdQ++KE6VleEuzEyXa0p6XT36QH
         xxCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=message-id:subject:from:to:date:dkim-signature:delivered-to;
        bh=cp2A6bpdYp66X/0g0pK31HDTLl8cWCsJwDWXKbrx2bc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XMFpJzFJNDe5Np/pUdsLDENM2g2BylTI5oMuzqsNfidG70SRf8hPZOGO4v9K36pdHS
         57rJUF9clR5SEDbtMmuLJKEOuBhNsmK8Bb54sY+bDFN71uwKeJ1vWNzZ/geAfIj4B8gC
         dosn9LofiI51yBGPLy3rkKPXyCJ6ktw9zztOkjKqEVYWQEbJ0xBGf4yTbwcn7g5GjwCl
         D8gK1RfCMVVbdMdu1i81+oEEKCuD7bVsrjbz3O4zJQLjzvTatDwBF5LjYnA1vG3/Y9FZ
         95XE1YSlYzwW6TLQF4gfCkm5kWScpZ8OCM2Q4sXwmDdj5J6Wby4cBoH/NGPfIVkeIFOD
         74Mw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suddenlink.net header.s=dkim-001 header.b=NWxGZe+l;
       arc=pass (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net dmarc=pass fromdomain=suddenlink.net);
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a9949f3b1fsi104925731cf.89.2025.07.07.22.50.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 22:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) client-ip=66.179.105.229;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-518-QgGFMVIbNIaKqktCR1_kUw-1; Tue,
 08 Jul 2025 01:50:03 -0400
X-MC-Unique: QgGFMVIbNIaKqktCR1_kUw-1
X-Mimecast-MFC-AGG-ID: QgGFMVIbNIaKqktCR1_kUw_1751953803
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BB9661956096
	for <blinux-list@gapps.redhat.com>; Tue,  8 Jul 2025 05:50:02 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B76F618002B6; Tue,  8 Jul 2025 05:50:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B4E1E180045B
	for <blinux-list@redhat.com>; Tue,  8 Jul 2025 05:50:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F323E18001D1
	for <blinux-list@redhat.com>; Tue,  8 Jul 2025 05:50:01 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751953801;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:content-type:content-type:dkim-signature;
	bh=cp2A6bpdYp66X/0g0pK31HDTLl8cWCsJwDWXKbrx2bc=;
	b=DcNSgPLi/8UU5EUKwYpq/y0wWKDab4faSl6ECsIT8kARfbPZjuUx/uuyGTcqd46gUNydJA
	nJmsMU+NhjPuh3hest3uJyvaFsvMJtFsBwLAGQAjRB4rRf5MDQghSzbNMA9lw75FkRJj5A
	2to0I70FOfT4ZD3Fjhto9BpsaOQ6mqEnVUmEw4fpTS6qk4aPssvM1In/M+4KnZ4Es6/JO7
	Z+GGmZ0KkpMnA0U19vsiYIsc9qxPMAzduRL4HCPALa2S8S4xdx+HiFrGmc1+mwh7q14N0w
	hR+PPEc7aqk4jx95bNUwyPrslRv5LwVCHzlhT3H1mUBSaJoO6RszM5bWYmaS3A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751953801; a=rsa-sha256;
	cv=none;
	b=kVKj9LMyXURKdl5GCGjMdZIekVWl4O7NPgFpa5dEdrOAnmfN2IF/4xUVFRiheo6PJuZCxq
	ES3vS6q0p1LtdcWvA3jVBWTexxb5fhGWgoGyRoMTYy/5oVAOv4+Q3hG3gtpKy2Ka+FtTVo
	NOeYTzXN8PdKdKJGXr61FyOj+8EDMskeyLiXbNZ8Z9U9KJiexIGzKZ1BHckHr1XCoWTBr4
	HkgOgtVMJbZW8iTQAPR9GBewRVAewlHl2H3Q4qMm8AjTUhHiWLd61vJQWxN3WwkGVyRhD1
	+0dPXntXC415giu8f8RbAiOBuWPfXJLeU87uIIfgzFAPUfosQJerxwsOZpVNug==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=suddenlink.net header.s=dkim-001 header.b=NWxGZe+l;
	dmarc=pass (policy=none) header.from=suddenlink.net;
	spf=pass (relay.mimecast.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from altprdrgo005.altice.prod.cloud.openwave.ai
 (altprdrgo005.altice.prod.cloud.openwave.ai [66.179.105.229]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-_fiWpstePAOYtjL8yHz1ww-1; Tue,
 08 Jul 2025 01:49:59 -0400
X-MC-Unique: _fiWpstePAOYtjL8yHz1ww-1
X-Mimecast-MFC-AGG-ID: _fiWpstePAOYtjL8yHz1ww_1751953799
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 685D6F82025B464F
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdeffeekkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpeffvffhuffkofestddtredtredttdenucfhrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthenucggtffrrghtthgvrhhnpefhueeikeegvddvueejheeitedttddtffeuleejgfehvdehkeeivdeghfetkedujeenucfkphepgeejrddvudejrddutdehrdekudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopeifsgehrghgiidrlhgrnhdpihhnvghtpeegjedrvddujedruddthedrkedupdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotddthedpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz.lan (47.217.105.81) by altprdrgo005.altice.prod.cloud.openwave.ai (authenticated as martin.m@suddenlink.net)
        id 685D6F82025B464F for blinux-list@redhat.com; Tue, 8 Jul 2025 01:49:59 -0400
Date: Tue, 08 Jul 2025 00:49:53 -0500
To: blinux-list@redhat.com
From: martin.m@suddenlink.net
Subject: Firefox Talking Book Downloads
Message-Id: <20250708004953.074262@wb5agz.lan>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9iIvx1SbQS-pfvUHu517y1Vtiqbz56MV2ln5TOqtmGM_1751953799
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
content-type: text/plain; charset="UTF-8"; x-default=true
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suddenlink.net header.s=dkim-001 header.b=NWxGZe+l;       arc=pass
 (i=1 spf=pass spfdomain=suddenlink.net dkim=pass dkdomain=suddenlink.net
 dmarc=pass fromdomain=suddenlink.net);       spf=pass (google.com: domain of
 martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

	Thanks to all.  I didn't know anybody was still running
lynx on the bard site since it is really infested with javascript
though not as bad as some sites.

	I can say that I did, more by accident than intelligence,
answer my own question today so here's what I found:

	After you finish your download, the way to get out of the
trap you seem to be in is to use the Alt-Tab key.  There are
really 2 windows open and Alt-Tab cycles through all your open
windows.  So, wait for your download to finish.  Press Alt-Tab to
go from the download window back to bard links, one of which is
to return to the wishlist.  Just Alt-Tab over and pick another
selection.

	I noticed that if you get in a hurry, what you see after
hitting Alt-Tab seems to change but you do finally get back where
you need to be so give it a second or so for the web site to
settle.

	One observation.  The bard title names, if you use a GUI
browser like firefox or chrome, are saved in your Downloads
folder with white spaces between the words in the title just like
they appear on a Windows box.  Unix systems don't like spaces in
file names so, if you want to write some program to do something
with the files, you will need to enclose each file name in double
quotes so a book title called The Quick Brown Fox would have a
file name string that reads "The Quick Brown Fox".  On unix-like
operating systems, native file names never use spaces but one
gets around this by enclosing them in quotes so programs see the
whole string as one long word.

	Anyway, it was an interesting discussion.  I also need to
apologize that my reply does not have the threading information
in it so it seems to be a new topic.  I am having issues with
outbound email so things are a bit of a mess here right now.


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

