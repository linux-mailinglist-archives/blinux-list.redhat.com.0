Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 12DE51C868D
	for <lists+blinux-list@lfdr.de>; Thu,  7 May 2020 12:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588847017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vq3S3RPxoG0QQa0kAoKX18E11beZ9j+R44dbxjT7iT4=;
	b=FQU0DxATyit1qz54m1cW2esIazmXV7Pk+JeLuux1jW7uw11xQf4CQxVjDvx7ustsejp1EB
	GL/Sn+yKbl2zWT6LAh87CCOqhstNXuA1Awod8SzmUOh4LdjPKtxhYaHjC27o1UG+YWBVg4
	YmSFTfUGhVAnTBa/b+AKSQt08IAgw9w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-KSBrN_UVN0OI5m7GYHKU_g-1; Thu, 07 May 2020 06:23:35 -0400
X-MC-Unique: KSBrN_UVN0OI5m7GYHKU_g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2556F1005510;
	Thu,  7 May 2020 10:23:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6453C10013BD;
	Thu,  7 May 2020 10:23:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C06F81809542;
	Thu,  7 May 2020 10:23:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 047AN82G004454 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 06:23:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C397A2026D5D; Thu,  7 May 2020 10:23:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF62A202B16D
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:23:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9632F185A78B
	for <blinux-list@redhat.com>; Thu,  7 May 2020 10:23:05 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-101-gRMqbrDjOl6l1uf2N5hgvw-1; Thu, 07 May 2020 06:23:02 -0400
X-MC-Unique: gRMqbrDjOl6l1uf2N5hgvw-1
Received: by mail-lf1-f46.google.com with SMTP id t2so4000495lfc.3
	for <Blinux-list@redhat.com>; Thu, 07 May 2020 03:23:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language:disposition-notification-to;
	bh=qjNojzlQonVag5ZPTF2+1P5HdSYlsSmX7cLbZi19LDw=;
	b=UMIaSBsuBj1c5kN60ht1uYERp3TgcejAmiCIioHQNkUXZD25QDVunkP668aX1/lYtQ
	BYX9Ci2ywkU3MI+66bmG+6W/SKjm7QhQwJ8/tuMsT2kww7WfOyTfnjracB319vxd5aNT
	PZ4y3zLgLJ305wy6QamCljQtamLxgvPiIGuzgLEp7TMrbS7LbKBPTkHCOM5UqkTOk2Ue
	G9IefF1VtPoEKn/EvaymEbZfw2G95oZXiYNHEcmUjmWZ9vENV55Faoo4+45US7WWB+Bj
	BdNAEmotM+qwSqilqQhTAnBsLrgOdsErtdY5RsWhydVnd1Lwbbax/ZLPpSQBn1yL75sK
	vIAQ==
X-Gm-Message-State: AGi0PuZjDrXSMtalD2guNskDgeQRwcebr0A9kYcCquOLH2wSsLhrWCsu
	nDsppMP9c/ujR+i8AY8Zl9EQ3LT5xv4=
X-Google-Smtp-Source: APiQypJmTS04WT1ZNjF7jGiBDl/It3V7wSQCMG+QOhXOn/KBK2D2DriUrmyv/XI1Dxl2GZ7xh63iJw==
X-Received: by 2002:a05:6512:3187:: with SMTP id
	i7mr8443228lfe.101.1588846980901; 
	Thu, 07 May 2020 03:23:00 -0700 (PDT)
Received: from DESKTOPJA0BLKE ([45.222.12.73])
	by smtp.gmail.com with ESMTPSA id
	j22sm3599722lfg.96.2020.05.07.03.22.58 for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2020 03:22:59 -0700 (PDT)
X-Google-Original-From: <BRANDT.STEENKAMP@GMAIL.COM>
To: <Blinux-list@redhat.com>
Subject: Anything besides vanilla Arch?
Date: Thu, 7 May 2020 12:22:56 +0200
Message-ID: <008e01d62459$7b0c9600$7125c200$@GMAIL.COM>
MIME-Version: 1.0
Thread-Index: AdYkWV8QMEvLCm7/Q62PGbmnplbcKQ==
Content-Language: en-za
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hi there,

=20

I have been running Ubuntu and Ubuntu spins for a while now and am looking
for something else for a change. I have installed vanilla Arch before, but
that was when my system was only running Linux. Due to the work I do, NVDA
certified expert, Training and tech support, et al, I have to have a Window=
s
instance to boot in to. I am not comfortable installing vanilla Arch on her=
e
at this time.

=20

Are there any Arch based distros we can actually install without sited help=
?

=20

Warm regards/Groetnis/herzliche Gr=FC=DFe,

=20

Brandt Steenkamp

=20

Contact/Kontak/Kontakt

=20

Twitter: www.twitter.com/brandtsteenkamp
<http://www.twitter.com/brandtsteenkamp>=20

=20

Skype: brandt.steenkamp007

=20

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

