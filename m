Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A335686F0D
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675280574;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WxGP4EcRQKlndznlCIAI13PI8PHStl0fHZGxgOX02sM=;
	b=ezEsISepcLlbbfjOO3zyeIJXdxtE0UWWk09mcRpPsrQ3cFPUVIVV8q0Qj8V0F2Qg9ayLSr
	UJQBlJY/QSLEqjEuJNxXVPbLcaFb02LiYPdOc0OTkDW+nKEvcelZKoQbsmTm8TQaPAaNI9
	awt9Y2BQMQqJjruJ//xnek8nhR1lt38=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-29gwR7MvPdeTk-dBs1sxMw-1; Wed, 01 Feb 2023 14:42:51 -0500
X-MC-Unique: 29gwR7MvPdeTk-dBs1sxMw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BE12800B23;
	Wed,  1 Feb 2023 19:42:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 675B02026D76;
	Wed,  1 Feb 2023 19:42:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 28F3219465B7;
	Wed,  1 Feb 2023 19:42:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Attempting to boot Jenux in a vm.
Thread-Topic: Attempting to boot Jenux in a vm.
Thread-Index: AXRpLjcuP92o/oTzGqmJ5kKLDeMKaHRpLjcudGkuNy7CU/sv6g==
Date: Wed, 1 Feb 2023 19:42:43 +0000
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.4055.1675278134.8177.blinux-list@redhat.com>
 <mailman.3826.1675278288.8171.blinux-list@redhat.com>
In-Reply-To: <mailman.3826.1675278288.8171.blinux-list@redhat.com>
Accept-Language: en-US
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.3839.1675280568.8171.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-GB
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

This is a known issue with Jenux and running in VMWare workstation, it has =
been this way sinse 15.x. I have yet to find a way to get this to work.

From: Blinux-list <blinux-list-bounces@redhat.com> on behalf of Linux for b=
lind general discussion <blinux-list@redhat.com>
Date: Wednesday, 1 February 2023 at 19:04
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting to boot Jenux in a vm.
VMWare workstation player 17 non-comercial, windows11, nothing changed
in vmwares settings but adjusting the ram and processors for this
particular machine.

Mike.


On 2/1/2023 12:02 PM, Linux for blind general discussion wrote:
> Hi,
>
> You didn=92t provide any details here.
>
> What virtualisation solution are you using? What version? What host OS?
>
> Without any of these details we dison=92t be able to help you.
>
> On 1 February 2023 18:02:45 GMT, Linux for blind general discussion <blin=
ux-list@redhat.com> wrote:
>> Hey all,
>>
>> Just pulled down the latest Jenux to give it a try, but for some reason =
I cannot get any speech out of it.  I hear the beeps when the VM boots up, =
I can ocr with nvda and see self-test requested, please wait, and after a w=
hile the menu comes up.  I can also see that through ocr, but I get no spee=
ch when inside the vm. I've checked to make sure the sound cards are correc=
t, anyone have anything else I can try?  I'm not finding any documentation =
anywhere, which is why I'm asking here.
>>
>> Mike.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

