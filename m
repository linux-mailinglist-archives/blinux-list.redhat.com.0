Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D927281CC
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 15:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686232271;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=78YcSsgh10G0Sw+9G3Zf8k4oNLid88JyNekaMbWZZgQ=;
	b=Vj93FDrRjWsvKswn1St78zGDhKV9jD4qWiLnGXyPieBnN32cuzD7LNmReaF+qZ1/9a13Mu
	7jBKfm44LAhN1w89WrkncVnJ4DE0GAGNymC1xabse1Fxvmk+nU7cashyp/EGHy42RRS6eK
	YhxDcmsO9HjM6pCbWbxW6LyWIPvuAMk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-616-M1UFF75YNZ-sgQPR_lORFA-1; Thu, 08 Jun 2023 09:51:09 -0400
X-MC-Unique: M1UFF75YNZ-sgQPR_lORFA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D0A7803DCC;
	Thu,  8 Jun 2023 13:51:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 76A2A1121314;
	Thu,  8 Jun 2023 13:51:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 152A719451C3;
	Thu,  8 Jun 2023 13:51:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: raising the volume
In-Reply-To: Your message of Thu, 8 Jun 2023 08:29:35 -0500
 <mailman.1603.1686230998.910463.blinux-list@redhat.com>
References: <mailman.965.1686145289.910460.blinux-list@redhat.com>
 <mailman.1737.1686223393.910457.blinux-list@redhat.com>
 <mailman.1812.1686223711.910456.blinux-list@redhat.com>
 <mailman.1603.1686230998.910463.blinux-list@redhat.com>
Date: Thu, 08 Jun 2023 15:50:56 +0200
Message-ID: <mailman.1537.1686232265.910461.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="===============2217716609715263700=="

--===============2217716609715263700==
Content-Type: text/plain; charset="US-ASCII"; x-default=true

OK. Go to the console then and type the command:

amixer scontents


This will display the entire soundcard setup. It could display a lot of
information so you can use pipe to less, more or any pager you like.

Chceck the "PCM", "Master" and similar controls and change them to their
maximum value:

amixer sset "PCM",0 100%
amixer sset "Master",0 100%

There can be a lot of controls so try setting them to maximum value. If
it results in louder volume it is correct.

If you are working on a laptop, there can be such control as "Speaker".
Turn up i too, because this particular control may be responsible for your
sound output in your laptop.

Tell us if it succeeds.

--
Artur Rutkowski

Robi kilka rzeczy, które mogą ciebie zainteresować:
- Oprogramowanie, którego nie chce sprzedać, bo ma nadzieję, że go nie będziesz potrzebować:
  https://gitlab.com/l0cust/workwatch
- Amatorskie słuchowiska, które znajdziesz na https://probka.eu
- Podcast samouczek, mówiący o uczeniu się samodzielnie (należy do To Be Happy C.I.C.):
  https://uniwersytet.net/podcast


--===============2217716609715263700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--===============2217716609715263700==--

