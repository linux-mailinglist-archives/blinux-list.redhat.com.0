Return-Path: <blinux-list+bncBCLPHQH4XEIRBVEHYWYQMGQER3I42QQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6848B8061
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 21:17:41 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43a49fa8d41sf79635121cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 12:17:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714504660; cv=pass;
        d=google.com; s=arc-20160816;
        b=kqgueVFS9QiKQdV42zS7OAXcaRfvGmmyjeLM1IWCBIsBkuUm+RX1nMUZch2apG/O0W
         OstxXD1qK30VbTOO/RFHVrMB9Fzv9n1qL7rmXQYPe4Fh4v46585rVuY/9SEl1RETCvsv
         22BZ3f+x15nlcsAEFkpyIgqvekc6aclDkiIZehpf2CvzzvdWXboTVOXEls5S1TXZDKv3
         IFrQY23jOOkMav1DuADvpz2GIlsLAvso2tSHAhGPCC/Bw2tzwEWqq15QjFH+C0j5lkJf
         K794q0iGdIwn3qE/p8TXYFDTfu/R3lJR+IQ4qWPRSuOqRm8fCQ5VJPcwECmcN7V+siTD
         aq7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=MtCHlou/sQ4woCywrOX5mDQshygTKhM5yms4nzlYIKE=;
        fh=5GxXl1+iyyagwIXW1efUtvoKjR9ff74Ufp25y0cHhKw=;
        b=Uw9+iRaKr3PINpSWyZZ74JlWXOaz94TjLWzBEtqrHTMwXN2pX/Xi15fhk10TR4KYdI
         d0hpKMU0UqlWDkwqrhFb+XpixnXwtGHRA1uTUlBliupESgfeKhxHLDk+lIbj3t/dIH+7
         V++3lR23um1NanXVKNuX4odwe77AvcBNO+7i67PdzJfKTTLnDFqVIE9IhKmTWumxDch5
         L17hO3dKtPjYP1gtiYkvciXEPn/kA/h91iQP3CcSfHeWL+50YdwWgm3NzBg0Vi7D+MrS
         q+EcqHhXlu9d03CjsBLkE235HkJa20iLf6bdwqYMagy0BrT6FsugqZTLTFZG/Xy/zv+a
         xNug==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714504660; x=1715109460;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MtCHlou/sQ4woCywrOX5mDQshygTKhM5yms4nzlYIKE=;
        b=JwpCj7zKQuxHN8mGm/clXG7CJhJ9k0pqMOCQ868+o0cMNgb8Zn3VgPSNuOeu4xM97s
         VCRcBIigjg+zS/46MT5boCdBJA0R7WRaIw6Skm6Z716tzgFNu2V+FdKqCruUpiY1Ey7S
         aNr9fr1Jfo/6yPrqa2UN7CHYZqMGRuUY6ufq+UVl9adQ/52OTIJp9l+jj8c5RqmyOeRQ
         20YJcnCJxxDKpwY+vQLPqyC6J4shK/M+sda1lleHeb4e5XCLzC+ynKRC/Z6uxvLRlLSJ
         nv4HT3yklGxLuPhbgW4gkn/8v+K4kH6bfxSik8z4FYaQSGxdv7DnRONyeRV/HQvg6Gnd
         jYgQ==
X-Forwarded-Encrypted: i=2; AJvYcCVLX8MIzhWsOd2sg94w10WfIIBC3DWE+Gg6IUzHp9D5H9K3FIURYsgDZCHg1WmcPwmPPNsZUzDNn+HNcd+oiK8Q1NN0O3JzHG9d
X-Gm-Message-State: AOJu0YyDE7prR64byKloGx4TkWkZ73y/lSf8UWl2ke9NvAf/sjYSBaOF
	iLlDKr6lJ4W3OpI5uiU3E5fl+bd+4zk8v3hBwSPr+rPioMzqy8qD3jaDgvW1PaI=
X-Google-Smtp-Source: AGHT+IED5qp+lOK3ahqF3otD6teQcreVpCjPWoRQUnFjDBQO7FbjeNLE9Kg318DREMhsC5zSs/72Xg==
X-Received: by 2002:a05:622a:3c6:b0:43a:d386:f8d8 with SMTP id k6-20020a05622a03c600b0043ad386f8d8mr296723qtx.21.1714504660302;
        Tue, 30 Apr 2024 12:17:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a93:b0:43a:dc52:cd68 with SMTP id
 d75a77b69052e-43adc52cf4dls22279001cf.0.-pod-prod-06-us; Tue, 30 Apr 2024
 12:17:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJFj/gP2FHkE7U/+lB4lUfS35+W1+d4RwHprPeJpzk1VsYX07qxN2+v4S7G+evFRf13Mro2kOIwZay+oVBPwzAwB7Ths0CvIt01SGt
X-Received: by 2002:a05:622a:14cb:b0:43a:f8d3:b556 with SMTP id u11-20020a05622a14cb00b0043af8d3b556mr226113qtx.68.1714504659302;
        Tue, 30 Apr 2024 12:17:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714504659; cv=none;
        d=google.com; s=arc-20160816;
        b=tCPtRhsQNnppA1rg7Fk8nfBzs5k3ArZTnB5zwLV8Pg1ZYW/L2sZgbRtmhrceNxIyC/
         p8OipFK/zxBnZ4uBhT2cQF+x9HATLLHeYJxOHmpqWK0Rl5zb8oyd6cdsqGSuiqdHzbfC
         a9xWKlwWa/anbsGnlOGmPGxl/h5xN/MpRWdThC5tTv9hexMuNxAYcoj4d4A0gYmMjvd0
         svZgh8n+zMngMFAdLxqWFgt9uXJZ6ctY1A0EDotkmO1Z9H98XLVRNATyuQ1QyY7gKlFe
         t06akkVmx2G7ieSu902aQL+MRRTRVqc2Am3A1mgLslxsSoC7ijO1LxBVO6YtmHpEikHC
         snnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=UfbC79ocVh/HkrOY6/RaVPApC++Gw2bJ29jj3gLiPX0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qG3cwujych0qrqF6dg4/hmSal4M/MGSWcLOC9iV9/gMsXDGLVkmm8yLdtAVNz1Kc0e
         yCp5JTieEQXsI1ExLvt5EIwWaZPq6YXTyRGjZYAI60pAbJBd/BSL3CZ6poYr1sfj6IDb
         R7VYPVRSMG41DWLJsdJHY+s5Lq562JWHp5WsiPCaeIJMY1XOO9wulILo+lcabtTsLKIz
         p2HYjoqY/IxO+NhZuCju4F3XK8N8ERJGZBearEpuGpAOxyeFPYWj/M+SAZYNTMWz8pm+
         /mVBx0IiEPM6tz2l04QNyBngYnxG5Khf9TjBSC/c60NdPZ5STYxlfU24BSbZfPN5lWRX
         EGkA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id cn13-20020a05622a248d00b00439ebf75520si20073981qtb.746.2024.04.30.12.17.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 12:17:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-633-YykpKXYGMIqh-F_wvF9kVg-1; Tue,
 30 Apr 2024 15:17:37 -0400
X-MC-Unique: YykpKXYGMIqh-F_wvF9kVg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D55C63C025BE
	for <blinux-list@gapps.redhat.com>; Tue, 30 Apr 2024 19:17:36 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D203240EE0E; Tue, 30 Apr 2024 19:17:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99733400EB2
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 19:17:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 448DE802352
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 19:17:36 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-232-6ESbb9olPw26npwni5r4ww-1; Tue,
 30 Apr 2024 15:17:33 -0400
X-MC-Unique: 6ESbb9olPw26npwni5r4ww-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 1A0FA32095
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 19:17:33 +0000 (UTC)
Message-ID: <c5fb7345-aaa0-4f68-bbc2-4e0dc2605ae2@jasonjgw.net>
Date: Tue, 30 Apr 2024 15:17:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Working with email attachments
To: blinux-list@redhat.com
References: <CY5PR84MB30514EDF26A28F2157EEB053D81A2@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <CY5PR84MB30514EDF26A28F2157EEB053D81A2@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------61VzDUjVNKaaOOYJjRywbwCx"
Content-Language: en-US, en-AU-large, en-US-large
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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

This is a multi-part message in MIME format.
--------------61VzDUjVNKaaOOYJjRywbwCx
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 30/4/24 15:00, Jessica Dail wrote:
> My question for you all is, how do I put Orca's focus on an attachment, so I can open or save it?
Which e-mail client software are you using?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------61VzDUjVNKaaOOYJjRywbwCx
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 30/4/24 15:00, Jessica Dail wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY5PR84MB30514EDF26A28F2157EEB053D81A2@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM">
      <pre>My question for you all is, how do I put Orca's focus on an attachment, so I can open or save it?
</pre>
    </blockquote>
    Which e-mail client software are you using?<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------61VzDUjVNKaaOOYJjRywbwCx--

