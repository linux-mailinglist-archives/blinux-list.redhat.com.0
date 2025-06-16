Return-Path: <blinux-list+bncBCAJTHUAX4NBB35UYHBAMGQE6LUSSGQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B809ADB839
	for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 19:54:57 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5b3aac5bfsf10791721cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 10:54:57 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1750096496; cv=pass;
        d=google.com; s=arc-20240605;
        b=gVCP0LL0SGTbt+Z9Po4bvNXVc+9b5JlRdZAdBl7QvpNXxeJC66rNy189vMA1c0sFOB
         6Ht6bu8/5Ke2Y975jTQ6irVGwnvhiCYHq80V4pEZK/G3kvTxePuxJmrg3uAoeqL7eipD
         NR4rVkxUzQN7qOEgXGqe1wO+x0YrehLyDH3vADcNKZyVHbS57mfQ63p9bqvRPO8GTOT2
         BRNkQUXY35GIeCIp/5VFuf52Y+NmGDd+LNCw7M3UFkXbbL5575Df1JklBUKJw1i3+z8F
         MS95jVCTGTsrr9x1fJRwXd+rRx2q2pvlX7y95gsWqwZvz/U4ghuFz+efyvFHEB2vOvbv
         r8LQ==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=6uCpMUMSsKb0ZqBMTurHwbFtGcj6GVLT7VPn3znTUME=;
        fh=9gCQzu4+bE3w0ObA7xRc8pH50bbT06665u8INQggrjo=;
        b=TYfwfoQh5Gh2ebF4oeaLJ49sBxSRwJeiz7j9WSCYovY7YncBRsCsr/YjpAmCc2Fzte
         7qqc2VNWN5HMK6mU2Z1gkTJwuo0NWrEofoK8AAJZs8MYyf7iuWFMAqkrr1nFfZQkJKo4
         +rXYtnyKSyJJftazkoy0fKpYwSnyQGGpC76e9NViODcN475/4X0zli8rAzfmwUOmFsaC
         Kohx422xTYOCEczKi6tgNDKX8ZcQ+dGo4IooRCVANcKiKklD2h+BqdXk1cnBO7RntM/L
         SnnWmJNFnlmolFKM0yVnfAEF9DFK5zLWmuXyIEuQmnRqe3ZbKo58+XaWlw2kD12MeAW6
         t4dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=hr4duqFi;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750096496; x=1750701296;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6uCpMUMSsKb0ZqBMTurHwbFtGcj6GVLT7VPn3znTUME=;
        b=o7PrmdgTjpQIiYwbfU83J3gNcrG9/acSZzJp/8Rx6b8xHaQv3Osu7JWyXfKQab4unK
         vSvExCNUo/Rar1Vqj+rO4c50mJ4zY1kLeMGQzqW3KmcWH3wOfQcUlqvgz5tZhCbbfmd1
         nch+qv5y73H4ZwVE4UbQwJBfg5UtM5+3p6Eb548AeEdNRgWYW25RQRkUbelsL6QuiBiu
         EVA/oswM1TPQpn+Sp7n7EvAJXQlVX7QkwqXKW/HZF7Kmdo9qTnJlR6gGXlB+O748AtFy
         S1JrbFUfGCTUu7nffoL1pm3rd9axCYd13MCeIztN3aKzl9VUDmr3xePIo18BIr65wm/c
         4hMA==
X-Forwarded-Encrypted: i=4; AJvYcCU3Se17q19zg8MIOd6en51/Dwwy+sZpiv81R2tne1ZFNad3LkgQ5PT2AyEPVTG92NhTj8ENng==@lfdr.de
X-Gm-Message-State: AOJu0Yx2QEt4eVlnvUa/uWrBf7Ui8sdBAteyWcUo7UQj8/k19otOMjY1
	K3fLudQtMrDWo+LrFzCaFNKFjgYZdG8SVandG1X/K3tM5DcFvjW9xkAEUif6qTI+0mU=
X-Google-Smtp-Source: AGHT+IEyQaK8IUHven24w0eQS+BVskEynk3RzHFukEtq2vTR8bYs4ZQ/sP1SKiNHM53TzdMeJ/srIw==
X-Received: by 2002:ac8:5c92:0:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4a758b92af9mr3612301cf.10.1750096496015;
        Mon, 16 Jun 2025 10:54:56 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd14CexgO/t0zBbFVG25CcU7/wx4NXL5bid8A9Zqb8Q/Q==
Received: by 2002:a05:622a:2cf:b0:476:7bf7:255e with SMTP id
 d75a77b69052e-4a722c7f915ls87847011cf.1.-pod-prod-05-us; Mon, 16 Jun 2025
 10:54:55 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCW2uBpQKUE9jyMGasQ64noU46Qpud28jlE/DE4ZlI+G4HnqmSFlALObJAEbjm3bt93YiBv4jPxIbgsqyw==@gapps.redhat.com
X-Received: by 2002:a05:620a:4091:b0:7d3:b5ff:fb22 with SMTP id af79cd13be357-7d3c6cde124mr1371561485a.32.1750096494904;
        Mon, 16 Jun 2025 10:54:54 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750096494; cv=pass;
        d=google.com; s=arc-20240605;
        b=RO0a632KJC+R0hr6RjP1OvPfpgRmH9Vnbwkcat8xu2bm/aX3+W0C7NNfGRhya9ykVH
         FRN2qH1sS8R392xBJdZ98hgf5WiA7fqH+udPUlKJkDuVsps8UTGHfdzg648kHtedwb33
         nlsYA9NqKBAZTbsjL52iIOluMiHOIxxiGUXiMmluGUFsmChl4nIdRChyYmGtzwzP5V6x
         SRCan0MCEE+G5CDJlQ63vq3A2WRrB3cUY4NGrljFLvzcFcUr4Kbom7VWeRnZ+sccgeSZ
         M60040L8w+byp33ig2umcWImI4e5LV1kINUSRn4IbJbAIiXmQ7XgnlRM3L/Fd8E9mRZj
         gaWw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=vOC0VimyPdtYqcA+69qDTwL/av2QsEh8UaxNa/9Nf4w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UJuZaAmkWJpQ8tcdUCvI8GUdVg2WypnfH0sIDnaU8BbL3n7kKMou8xI7L1frWU46TF
         QqrvMO6X2oEN9ykRueB6Dlg4sVGIv3dZwrHh19YcbHM8vP3QxSDp/X6UPo57XbPwToVL
         6hLfppKvKhDIhIGFftdaO2UbCv6r9PJB+BwvLFHM43OeDCzGONCjJfTjFdp9+LT4naf0
         kB9uvKbJJ8bDj9X3rkqAE7QO2rNGqkjEPS3mUpQSqc+Hcw4OpzKwwiikqsuYWmarl04z
         Getpq5V19IV+GoS2+s2z9Nve5ey/yGGWw8FNc+W8h2+wUXC5bs4h4tnQxh9yfbdDi4z0
         Ww2g==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=hr4duqFi;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a543d0bsi99841731cf.621.2025.06.16.10.54.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 10:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) client-ip=136.143.188.14;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-607-BiQOaMIONOKU5z8AXJe9hA-1; Mon,
 16 Jun 2025 13:54:53 -0400
X-MC-Unique: BiQOaMIONOKU5z8AXJe9hA-1
X-Mimecast-MFC-AGG-ID: BiQOaMIONOKU5z8AXJe9hA_1750096492
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6C43319560AE
	for <blinux-list@gapps.redhat.com>; Mon, 16 Jun 2025 17:54:52 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 670161800287; Mon, 16 Jun 2025 17:54:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 63F5C180045B
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 17:54:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DE7BD195608C
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 17:54:51 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750096491;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=vOC0VimyPdtYqcA+69qDTwL/av2QsEh8UaxNa/9Nf4w=;
	b=NcEN8uH7FcIiNJxZvH2eZdBy99EIvF/iGou8Xc+4Ex1bVU2tzS6PRt3J14ESfXdkxxW+nW
	dF9wlQeYCVY1lsMuDXZ1zRnrJQ2KHWA0cXanBj058HVe7609pcXr/BrN3i66CRcRh5mkyy
	SfGAR2qeW0uP2hhhJ+kbfz+i/aI+ER3s/suEmhwagWDy76i8LUHDu2ALQ+mM6qA43H5sEm
	PDPqeWHjyIQ4futRHjJTSgWwr6biYb7OsI4Vq8om2771UbhXXpgF+67WjZuL3DCgcfur0w
	EUpg+oA4n5MM+a2EflntLuU84+QstAm1xhAqY4PUmkXDrXNDPHYsNO5uMar27g==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1750096491; a=rsa-sha256;
	cv=pass;
	b=fR8Y0EIZyFCXTnPZAaZrMPvHbxa+SRvxmfiuNnAsGGz8bT8nhlrPFVouWML/sx5mhTpHcb
	4JOo7PrT3xC/yUv5/vVXI6x1H+/BHsPs3CCkXpgZstHKoTqJ9VlB0DCCKCjdGOGplsvBBH
	fgLB7ylQ5ZuR33DYrpPkdM7uhk0AJQ3+Nfq9KA5p/3jTXfjhoLbiIkESiZOat5AuV5VkFr
	e0CcnZQ5YX2ApCXlRJWG9Nz8LMeqFnD9Sn+1wcKMh0j3EjjT0if41iOZNZj0OusK3sVnmw
	wHVdGFtzkCKAPjoSoezl1xG8Z4QAmdo5ZkUUHZExKYYoJfQ0lnG8hVIMb/dqkw==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=crosslink.net header.s=zoho header.b=hr4duqFi;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=quarantine) header.from=crosslink.net;
	spf=pass (relay.mimecast.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-179-VLeP_Q1XOIGnzeYkksdxVA-1; Mon, 16 Jun 2025 13:54:47 -0400
X-MC-Unique: VLeP_Q1XOIGnzeYkksdxVA-1
X-Mimecast-MFC-AGG-ID: VLeP_Q1XOIGnzeYkksdxVA_1750096486
ARC-Seal: i=1; a=rsa-sha256; t=1750096485; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TzVcAszKaKQy7Dcph4thI/G61o7lrzkVZpV4CB7pOKSlGRm3fV3uzUmLbcB6+4O4dUfW3ed29qL5Q/GlYuEQLW1iz42kTqgRSoRaJUxYwu2PnK6BOrR2PiYYD9U5uV8jNeZ1NNP8kOggek+oLmGwSXxDUqwf1MgmVsqp1W5gqnc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750096485; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=vOC0VimyPdtYqcA+69qDTwL/av2QsEh8UaxNa/9Nf4w=; 
	b=YzPqHhfjPt6tFLamtdmWx9YlwZmz21t1CW/Xxhv6wbKY3lefHKzvjk9TpGfiy5ulkk9J1GXy+NyOouEBusr7m4u+PsYAs69WNhsWC4hdknzYgFg59QInV7bIgCtEkfhtKLfKGsYcEkhI4IrATIHp6GFCc59iqC/j+gVekK8kS1A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
Received: by mx.zohomail.com with SMTPS id 1750096482227309.92732086382466;
	Mon, 16 Jun 2025 10:54:42 -0700 (PDT)
Message-ID: <30035a27-7f55-42b5-86d3-b64d8d5aa823@crosslink.net>
Date: Mon, 16 Jun 2025 13:54:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: No Sound After Python3.13 Update?
To: blinux-list@redhat.com
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
From: "'Chevelle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
X-ZohoMailClient: External
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0Rls43lD02TRZJe7RdUPkVYPk-jgF3q0e7VSR7ehZj8_1750096486
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@crosslink.net header.s=zoho header.b=hr4duqFi;       arc=pass (i=2
 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass
 fromdomain=crosslink.net);       spf=pass (google.com: domain of
 cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Original-From: Chevelle <cstrobel@crosslink.net>
Reply-To: Chevelle <cstrobel@crosslink.net>
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

If you issue 'journalctl' do you see any errors?=C2=A0 Perhaps you should a=
sk=20
on Debian Accessibility.



On 6/16/25 11:44, Chime Hart wrote:
> Hi All: On Saturday I wrote to the newer Blinux list, but I wouldn't know=
 which
> list has more readers? Anyway here in debian SID, Friday morning I ran my=
 daily
> updates. After those updates my sound completely stopped working. We trie=
d
> removing, purging, and re-installing Pipewire-pulse, even rebooting. Stil=
l no
> progress among 4 sound-cards. Thanks so much in advance for any guidance.
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

