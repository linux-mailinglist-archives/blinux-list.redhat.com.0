Return-Path: <blinux-list+bncBCD3RKH4ZIBBBS7SQHBQMGQEOHY6WVI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D06FAECAC1
	for <lists+blinux-list@lfdr.de>; Sun, 29 Jun 2025 01:22:53 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a44e608379sf41769401cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 28 Jun 2025 16:22:53 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751152972; cv=pass;
        d=google.com; s=arc-20240605;
        b=UgjZPVyrQX6C4VfrDe9QaPiLEszzLeXoWwirJTt6O395p23a002z4wIbyi68GZB183
         z+fgpT8zSIUQVeJ0mDyPXkERz2Et7pJ8sdVD5vQt1OHsKitOV3m749pTBKK5C9zhFkes
         083QfKPgqnzTZBtOtBH9sE/gUWWYWDRG+TZu0xdBnzzAYrMy7aNiQl7PG1eb5iaO8GHp
         RXcs3lwsxWlObKmaIDo3ptBdVVwvWyBsldkzAek8HT8zfS8pP6n+23CtaT3SjQ3dqjyb
         M1Nz0W7pvIBIKSAnQtuH4kg/CMvs2ZjX0mmRNwrnueLgGUs8HydzcBUk4ioinepXTcZ9
         Zp6w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=99Oivg49kAqD0kYb+5O5DRd85B1QjzCzbCVhQ+eJjeY=;
        fh=A+W2KkLihXXL5DwBAFCyrWHRRSIhXgtJEUTAUeviT4g=;
        b=Ijm3EWiaAeOzjnxHTRa5EZBAcJ+vwzPCLOd/i036YwG3WYV32NIOxgeTDOXERk9Pvq
         Y26oj0j79ML1EVspf9ISZ3MG8mcOwEZKIc+QS8uazJPOAry7NJT29ftmBrdPYcPVUP3S
         1XAOxwm6rqalXnRcoBIspvVULLou65iX/96GwlyuxnSyjCGObwYXBL/o8qZCVrj0m5J4
         UK/z6hnnCFYvIfvxV4xQH4VnvUN0Fuyy2FE+atlC0C7KUIFQ/QKesEoyNfTDH+HSBSpZ
         2T0lgWEX5PVQkFn0uubgTHbwrd1gkenHL8vdIcdnVUpWuK9v5bBgs/KmzXdLhy63b4fW
         V3bQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lFNgkj5D;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751152972; x=1751757772;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99Oivg49kAqD0kYb+5O5DRd85B1QjzCzbCVhQ+eJjeY=;
        b=OwuuLa876q54BP7+tc3DeBSfq2zWjibs26cW3lDO3UEt5cltas3dHYkBU+JP/2TXiL
         VeEa0BqR6t4QCvz4V5wdOStvgdg6bntQ2yXyPWturcia72Zi+VIyi6MQG5jACam/A8uU
         votCuSxnp1ER9cOPY0oGzT7NAna2fV0Afs+6rMJWaCtFejycvHPh6EuNkqmmvRjiZ9kB
         OOf0R5TiY9s1rFIJ2aFbNk9Y3P7wlMtkzuK87F/DIQ7yh1vFpj0niv+Lbt7SIrdudVhV
         O6BiG2fpeM8DKObEG/p6Z/rZC6QyC8CpNmHXKdPH8WKdLT+yFTzLf5cG1IWHOCANhTjJ
         1KJg==
X-Forwarded-Encrypted: i=3; AJvYcCVhavTCVN1LtRh/7LDer1FSN/7bPOv3xD0ogGiJkHWHqsoRWERXy/eYDKYkt45Z0PdyqQx7YQ==@lfdr.de
X-Gm-Message-State: AOJu0YxdYJ9ZwiX6Ke46j6dhOb4h0/liodHwHTK0xJk16Ulk++pC7QET
	RgBhH2Eiz4+UcKzic9lw9pMunEO0ixEAm5vMVYVOMF/2mdSaLUFBs/bkVGOnWhaEEK8=
X-Google-Smtp-Source: AGHT+IE9BJS34XKFPdJc8MbyJDZzFYcf3fNbca/xdY26N+xc9eeqEq5UD2xTdAdJOhTLUfXxKSsNZQ==
X-Received: by 2002:a05:622a:1f92:b0:4a7:f9ab:7891 with SMTP id d75a77b69052e-4a7fc9ca57amr138556721cf.5.1751152971820;
        Sat, 28 Jun 2025 16:22:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfK8hIIIZI+Ci5twJZhJyZSeyjcNU24urO9EKPgozkowQ==
Received: by 2002:a05:622a:1104:b0:494:7b0d:ba8c with SMTP id
 d75a77b69052e-4a7f3216be4ls77175041cf.1.-pod-prod-06-us; Sat, 28 Jun 2025
 16:22:50 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUEaALs1EPgosM3kqEgZKhUeB1D39D9JMQZtDnAdN/od+kkLn28oySuRrUdWDOIgWt/wVNO+wsrbSikkQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:458b:b0:7d2:28c7:7795 with SMTP id af79cd13be357-7d4439695bdmr1323904585a.35.1751152970682;
        Sat, 28 Jun 2025 16:22:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751152970; cv=pass;
        d=google.com; s=arc-20240605;
        b=SqFY299FTbTJu4kjflJl6VczGVmrTRaQqrbBusiFJFPO5KkRCqPcum+SVqwJpPwzAQ
         WIlCSuRLBcTUYlwLwelF+gmZKcnqHN0PqxcQUQrEUZ36MFhaR6NIIT2tnirP7kk9H7cE
         JOoNkF1xiLHwfMve+D0uEG3ywt1pr+TG7gXbGX+tppmC/neOGn/zfq/0lWsY7F2TYQVL
         5OrpkK3l5m5GQG3kNcGKZ++evnNHemVdjLbukNt8PHbvZI4ZTQCeI0lFS9PkF3sXge4r
         hVwpGm/tOqSF06+oBnUKuvka/j6Qu7nrdfDE0/6NlfYl79FRcKfxRCDtHryURGOV5qZL
         scsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:delivered-to;
        bh=ZDgrNZMyX74+E+n7nW/AvwKPIPX2ZPcxko3axjSj4xU=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=ljRTCa3mUoq41pOI6mKkkzi2FrUpk5gEiKLV29lTEB5HoRLdgyQINkwZl72hrT+S5s
         dO28SxW8A6v+3scOpHLylgOyImM7LfCi2Lr6VUoHyeyAPdAF+Mr9nlHXInVtE78wSZOx
         BjyjDp9El74J3qpJJDfddJVaZN+4Aqn/Hi6Vo7UEAPt8XsLVRR0KeMkj9h2VR9lpYqbA
         BOLq3klZMQ56MtNC+bFKsyj16seOpdpso1c9FYfVw6atx5XkrJeR8gd26RmGfOlc9gya
         6DQ94vFqVNyDrSjowSx1lZ/YHCoz3TBFqxFsWrYuBfQyKuTotk6WdUhXVjAINOUEplK3
         rnrw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=lFNgkj5D;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d4432254fasi484538085a.283.2025.06.28.16.22.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jun 2025 16:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.218.54 as permitted sender) client-ip=209.85.218.54;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-317-KoDESrWyNmKcTGV_R5hVsA-1; Sat,
 28 Jun 2025 19:22:49 -0400
X-MC-Unique: KoDESrWyNmKcTGV_R5hVsA-1
X-Mimecast-MFC-AGG-ID: KoDESrWyNmKcTGV_R5hVsA_1751152968
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 42D5D18002EC
	for <blinux-list@gapps.redhat.com>; Sat, 28 Jun 2025 23:22:48 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 023A430001BE; Sat, 28 Jun 2025 23:22:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F38EB30001B1
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 23:22:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49E23180028D
	for <blinux-list@redhat.com>; Sat, 28 Jun 2025 23:22:47 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751152966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=ZDgrNZMyX74+E+n7nW/AvwKPIPX2ZPcxko3axjSj4xU=;
	b=jN+XkQJxJ4BUSZppElb5v8/lMUpdwpgbkcM6aEeJ9wnHQZpqc8yLu+R2/RzZG3F0orSzAT
	pEeuh8NoEwdhV8mxj1p1YSjMMqCzW3iPf0m8XfqOS7Aabkrftj7AgAJA5ytYy7TW3M/9TQ
	lqVm5xXXST6SXRPrk8GhtqzCXYhYzoG99qMrRvgKiwTwkoREuiCHcIkv7r9hZn2dCKdz/M
	KiFkvc6fpxu2a/vAZwrlkLLyXNFOnClP+N2QiHyP1YrpQzt13Lx3nQ9dtbUVjotOQQc5dL
	A8KkOweG0eXXJg7YYoSNbnEHZFYz8JCR6hAMhiKaTXLZ9YjDWy/WgtMWn8unQA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751152966; a=rsa-sha256;
	cv=none;
	b=YjZeZqqT0bsYGo2rSJanWeK3iJe0gDhc0WPfTeeAXLXkY0se4R1r6+lknVJiEDwaPnS0k8
	e055PLpbLA0hlTHvK2WYvd9KJ46acylOEBtu4El6qQ1AWcKyQPqKY6OSo/BRVlbLerS5rE
	jREH1jgQU9K3yfqv3Vd331PEyALKQnHMw4dvQyySdCYir93lDcknJ0RNUBy7DBkArKwNAf
	KHMccsEpKNonvzBMNLDI1U2GCfj0U53uYz5zf56dp0BYaqk7QTM0FqJArJN/gwyPUd68At
	o0wFIzSq6F9oZpi8bnffOP+dNk40Ii1eWYofdZ82ZWM65KH/GvzffH4IeSo2xg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=lFNgkj5D;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of mewtamer@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-4haDne9wNO22ycokchnGcw-1; Sat, 28 Jun 2025 19:22:43 -0400
X-MC-Unique: 4haDne9wNO22ycokchnGcw-1
X-Mimecast-MFC-AGG-ID: 4haDne9wNO22ycokchnGcw_1751152962
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ade5a0442dfso624396366b.1
        for <blinux-list@redhat.com>; Sat, 28 Jun 2025 16:22:43 -0700 (PDT)
X-Gm-Gg: ASbGnct5IRcKaeb0saVGShrteE7BPDlczA2/Q8kDzhV99i5wMNJ5kdbrnrzG1FHK25Q
	9UCQgVl90gtH2chM3BrSd9PICvwntFsBrFqlsNVEy6FxtiqpU8YG3y0jEZLYjGnTAjOeUZSntM9
	XXqPvcT74lSh51er+By0a5szDnmnDuprPRLjhND2R/HrVJAeVkuJvQ9dT5+9Y=
X-Received: by 2002:a17:906:c147:b0:ae0:df46:abd1 with SMTP id
 a640c23a62f3a-ae3501518a3mr812143966b.45.1751152961610; Sat, 28 Jun 2025
 16:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <aGBQto8CI1W59UzK@panix.com>
In-Reply-To: <aGBQto8CI1W59UzK@panix.com>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Sat, 28 Jun 2025 23:25:39 +0000
X-Gm-Features: Ac12FXzzSqn_Aic4K_qgox-LB7O1Y6Q1N3uxC29nph1n1ckWNQCHh0ipzz16T-4
Message-ID: <CAO2sX31hxdMOFTDTQExNrwgkjwX5hxVYM3=6mBkB=n=J+jwObQ@mail.gmail.com>
Subject: Re: Orca firefox tutorial needed
To: Rudy Vener <salt@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: Y4UUY8Ug0SBLTtmlM9OY0Eqig5_DJrg8TJMlEO0cVIY_1751152962
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative; boundary="00000000000039684b0638aa12bd"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=lFNgkj5D;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 mewtamer@gmail.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--00000000000039684b0638aa12bd
Content-Type: text/plain; charset="UTF-8"

Not a tutorial per se, but

Mozilla's support page for Firefox's keyboard shortcuts can be found at:

https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly

And the Gnome help page for Orca's structual navigation can be found at:

https://help.gnome.org/users/orca/stable/commands_structural_navigation.html.en

And I'm really not sure what general advice I can offer beyond learning
those keyboard commands for the browser and screen reader.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--00000000000039684b0638aa12bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Not a tutorial per se, but</div><div><br></div><div>M=
ozilla&#39;s support page for Firefox&#39;s keyboard shortcuts can be found=
 at:</div><div><br></div><div><a href=3D"https://support.mozilla.org/en-US/=
kb/keyboard-shortcuts-perform-firefox-tasks-quickly">https://support.mozill=
a.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly</a></div><d=
iv><br></div><div>And the Gnome help page for Orca&#39;s structual navigati=
on can be found at:</div><div><br></div><div><a href=3D"https://help.gnome.=
org/users/orca/stable/commands_structural_navigation.html.en">https://help.=
gnome.org/users/orca/stable/commands_structural_navigation.html.en</a></div=
><div><br></div><div>And I&#39;m really not sure what general advice I can =
offer beyond learning those keyboard commands for the browser and screen re=
ader.</div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--00000000000039684b0638aa12bd--

