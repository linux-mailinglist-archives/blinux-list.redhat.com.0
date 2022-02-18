Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEA84BC305
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 00:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645228111;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cdOsZjzjlawpQIn0OE8FwwvejesX4uvh6XM71aNxjEo=;
	b=C7/zEMJVBqFwJEuYYWMU0Q/CIX51s6+Oep4cXOKKkuL/ZGjwJs1FFPuW4UmrDK6OzXw62Z
	Tt8TGWy04SQSOk5qXdEHHO1cmGb7ngwCXvn++eWyc2p7TTXDxaOCrZX1KdNsnOzSpOanBl
	xlowpMOZEoyy6NP/2pQn4YLiFsBh3Ok=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-6dz4ez9eMgmCEzIz77megQ-1; Fri, 18 Feb 2022 18:48:28 -0500
X-MC-Unique: 6dz4ez9eMgmCEzIz77megQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CF18814243;
	Fri, 18 Feb 2022 23:48:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A90C4EC90;
	Fri, 18 Feb 2022 23:48:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5C8714BB7C;
	Fri, 18 Feb 2022 23:48:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21INmGFp017448 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 18:48:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 27591141DECB; Fri, 18 Feb 2022 23:48:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23A71140EBFE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:48:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B89F3C02195
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:48:16 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
	[209.85.216.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-271-O4Q7uxLwMam2nNil_3JSkA-1; Fri, 18 Feb 2022 18:48:14 -0500
X-MC-Unique: O4Q7uxLwMam2nNil_3JSkA-1
Received: by mail-pj1-f50.google.com with SMTP id
	a11-20020a17090a740b00b001b8b506c42fso13741773pjg.0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:48:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NbJrCh5WBtmRJQKOkk/ZLQioPeEyAT/AbLF8AcdQ/rY=;
	b=DCfchmiyrT25v99luiMO0g1+N/QVt4g33whgNQP8E3qYKTRflWi59cIFhZfF/hB4DB
	Qea02Cgb3ErWH4IYfzrzttBGgl7i+7MtBhCRFcr97JfYpTcec2VzzzKIpIOJ7AQi6RV/
	VP8XrX9N5ILJFz+4hxbDA9jA/Qw8sCIL96QfaiPCZ1p9nAAPIeUx6GXSwBRUIiN/feQ0
	fyntATCuNBJC4NW3fQh00IwXaRgP7JyN45gZTyiaXx5OZivxff2jr62Mfa3NN+r3wBxi
	jHzaOlciRpRi1WylDWZBHmw3NideQs74D6sNbJUFmhi4N72TouUM82n13Prf0MKNgO3p
	Jcog==
X-Gm-Message-State: AOAM531SYmtxXBEWr/J0L9+3bc7V1L+9ZbS+D0nVg5douxkilVSdKjcl
	BSTU/8f69Zrqx/73Tp7QiF5/0izfKaZ2BSytJT3oCEp+
X-Google-Smtp-Source: ABdhPJz+Kde0qePN0S3gjsRL0ST5pXxprSW6eN8bee6ysGBDo3YfAJC8bG/5M7811zjXG6rnnfkUmy6S1tmWxF0eKWk=
X-Received: by 2002:a17:90b:4b92:b0:1b7:aca7:b2f3 with SMTP id
	lr18-20020a17090b4b9200b001b7aca7b2f3mr15088923pjb.169.1645228092838;
	Fri, 18 Feb 2022 15:48:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a10:de18:0:0:0:0 with HTTP; Fri, 18 Feb 2022 15:48:12
	-0800 (PST)
Date: Fri, 18 Feb 2022 17:48:12 -0600
Message-ID: <CABKqQvH20Loc2_se1mdNFU88jKc6Qfz1QDqnf=iKRoRDLoP_eQ@mail.gmail.com>
Subject: Problem with VS Code and the Braille display
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The first half of my display is always taken up by the name of the file!
It should show nothing but the contents of the line in the file that I
am editing. How do I fix it? Who would want to waste their display by
always showing the title? I don't get it.

Amanda[0]

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

