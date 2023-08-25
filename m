Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D9B7883CF
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 11:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692956054;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JJcle3WPio75MOZjm9ff3ucuilG9d/WjCxrEI9hrI1E=;
	b=iRbz1k4BKWVDydQCs/fSn9GZXZV4/bsa3QlDfxjCB2AvHrZV5oAlUdQqQlJ3U67f8tGkyg
	BJS3eIiQ4MI6vYgd32hlMh5uPltRpyhcDpsQ4WTwB+yIIaZIpIGy0OBmpDr16xgsUibt5H
	wG8o5ao3D+WSQ/yLaaavEpsZLvdk7k0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-ERarspT2N76K-290DEW6TA-1; Fri, 25 Aug 2023 05:34:10 -0400
X-MC-Unique: ERarspT2N76K-290DEW6TA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5C4A6800CA6;
	Fri, 25 Aug 2023 09:34:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A7B842166B26;
	Fri, 25 Aug 2023 09:34:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3C8EF19465B5;
	Fri, 25 Aug 2023 09:34:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 11:28:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: microknoppix download
To: blinux-list@redhat.com
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
In-Reply-To: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:h0Muqq9CUHY=;cshT5kgjKKB0/JktKJQ/yysUYq/
 O1gOZO0fe9XngJFFyziKOEK0kV0wVv0XtsrgWfLjh/eCy9wJl+RlO0pHA0VlzU6ge7TDnVtID
 399ilG6i8T3XQ+rbH6XnNGyxt1KhfqUQjNP/pAQ5P4Qwsl78Ewacd64ETlwGx+VwDA8yOnGg5
 rYcPrZNh69fzI+rnvl9Bo4ocke7kVhg1IW9+x1HvYMHm49jZfv+QGyzsTsSwarNr715ZhA6AA
 BomWk3DjSweXX9rBum/b+TolXjZY3RuWwzblAS/1AyDjn34TKRp/t72I9EALNix8IpWbDOqeN
 MeVehhFlMYKhi+SW6yDcg/I1cQtNimSvh/hb4otC08Gkou+LVqK2vbp5YqQ3jmiZUmxeqCtwt
 syGF9or+jUoinBK062XIBEuijk6gmT1xw3/Mlw5c64HQKDeXYoQt9NXebqS7dZZ2oeZ2QlqYA
 XjvQY0VuvHyIAZvi0O2oTsMBIPN6JQ5cbF7OF4NG/iPdp/HqhNfaulDpvh9jDCcXFm96Il55g
 SgVkyNj+som9hBPfE/5PDnwvQpKYMwljpmZY9ImJqIkNVrtzAtZIpe+finsYLRK9qgBhb2n3T
 AusMrigNktPWM6y3mhiBj3DK2WtoP+eIAyU+M5lHhOJ0FYxUNzRVWbS1jmNRpTIBHngbkQlFB
 RfXd2A3o44Bvj9tXFNCepbQlZc/htHG7tbrJ+sbvcAfyb6YTEid/LTij/cDctnIMkSjzpRL8C
 /F3LvICNMOM8/u16G4rqhWsGJNIWtkYHd9HtiJ/gjrEUaOClGiWaW7BeB0ZjOTFL4CUgTrAs6
 2kwaoHr8XOYwyPdyw6m7U/eRIo01fNK9XF0XpYMpPH22Pugy/WpUwVs0qWNQoSHMThkoSE8Az
 Scv3mGYg1PTTg+AVONKMW4U0/BMW4bWUdJliZZ2EcCzceecDcuAqJTFvUAYkO18B5kOLPsE48
 P1o4qyj9NNW1oxYEAeJ61LFfnZw=
Message-ID: <mailman.1821.1692956046.18725.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey Jude,
there is am English version of the site:
http://www.knopper.net/knoppix/knoppix60-en.html

HTH,
guenter

Am 25.08.23 um 10:57 schrieb Linux for blind general discussion:
> Has anyone got a download that can download the latest english version of
> microknoppix?  Everyone of the mirrors only has german text on it and I
> didn't study that language enough to understand the website's content.
> I'm having better luck downloading through bittorrent these days than with
> other downloaders given the low grade of verizon fios connectivity.
> wget for instance is downloading iso's that fail sha256sum -c tests once
> downloaded and it does that persistently.

--
.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

