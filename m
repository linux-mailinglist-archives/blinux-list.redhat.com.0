Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4FC72835C
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 17:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686237188;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Yg4NMMGBFGY/wE+Kn7JcNK4UNV94BJb7N/C4TTUISJc=;
	b=DqXHW0Ux3B3Zq3NwYvwYuvWe8Lfc5+aHsXNfOoi9TPg/HsiIC2jp8Q/scwDoLC07+KaKsl
	DJBesrKCwSoiiHQVTYa0SAZmWSudxkhSl0bFxfewLjlAF1fuE2N7bWXBc5SvBJCxIoo5kE
	nWoUq/7nrt7O8uZo8VdO+u9Uyr4+cLU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-456-_BbMRKnGO66SEDUMSHp2fg-1; Thu, 08 Jun 2023 11:13:06 -0400
X-MC-Unique: _BbMRKnGO66SEDUMSHp2fg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BA8D93C0CF00;
	Thu,  8 Jun 2023 15:13:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6CD90492B0C;
	Thu,  8 Jun 2023 15:13:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CD36E19451C3;
	Thu,  8 Jun 2023 15:13:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Re: raising the volume
Date: Thu, 8 Jun 2023 10:12:41 -0500
References: <mailman.965.1686145289.910460.blinux-list@redhat.com>
 <mailman.1737.1686223393.910457.blinux-list@redhat.com>
 <mailman.1812.1686223711.910456.blinux-list@redhat.com>
 <mailman.1603.1686230998.910463.blinux-list@redhat.com>
 <mailman.1684.1686237060.910460.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.1684.1686237060.910460.blinux-list@redhat.com>
Message-ID: <mailman.1689.1686237182.910455.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Could fenrir be installed on fedora?

> On Jun 8, 2023, at 10:10, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> 
> On 8/6/23 09:29, Linux for blind general discussion wrote:
>> I can use the console.
>> I use mate terminal since the console would not talk, as far as I know.
> 
> This suggests you aren't aware of Fenrir or Speakup, both of which are screen readers for the Linux console.
> 
> I would generally recommend pactl to adjust the system volume in a graphical environment. Also, the media keys for adjusting volume on my laptop are fully supported. Yours may be as well, if your system has them. (On my Lenovo machine, FN-F2 and FN-F3 decrease and increase the audio volume, respectivey.)
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

